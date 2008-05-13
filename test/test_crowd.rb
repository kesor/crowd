#!/usr/bin/env ruby

#
#  Created by Jason Rimmer, jrimmer@irth.net on 2007-10-16.
#  I hereby place this work that I have authored into the public domain
#  and in the process abandon all copyright protection.
#

require 'test/unit'
require 'test/unit/ui/console/testrunner'

require 'rubygems' 
gem 'soap4r' 
require 'active_support'

require File.join(File.dirname(__FILE__), '..', 'lib', 'crowd')

# Add extra methods to Crowd for testing
class Crowd
  cattr_accessor :application_token
end


#
# Unfortunately tests currently need to be run in to the order given
# as there are dependencies
#
# Numbers after 'test' in method names force the order
#
#

class TestCrowd < Test::Unit::TestCase
  def setup
    Crowd.crowd_url = 'http://127.0.0.1:8095/crowd/services/SecurityServer'
    Crowd.crowd_app_name = 'soaptest'
    Crowd.crowd_app_pword = 'soaptest'    
  end

  def test_A_get_app_auth_token    
    token = Crowd.authenticate_application

    assert(!token.nil?)
  end
  
  def test_B_add_principal
    token = Crowd.authenticate_application
    
    result = Crowd.add_principal('unittest', 'unittest', 'unit test user', true, { 'mail' => 'unittest@unittest.com'})
    
    assert(!result.nil?)
  end
  
  def test_C_find_valid_principal_byname
    token = Crowd.authenticate_application
    
    result = Crowd.find_principal_by_username('unittest')
    
    assert !result.nil? && result.size > 0
  end

  def test_D_find_invalid_principal_byname
    token = Crowd.authenticate_application
    
    assert_raise Crowd::AuthenticationObjectNotFoundException do
      Crowd.find_principal_by_username('asfasdasdasdas')
    end
  end
  
  def test_E_add_attribute_principal
    token = Crowd.authenticate_application

    attrs = { 'scalar' => 'value', 'array' => ['1', '2', '3'] }

    result = Crowd.add_attribute_principal('unittest', attrs)
    
    assert(result)    
  end

  def test_F_update_attribute_principal
    token = Crowd.authenticate_application

    attrs = { 'scalar' => 'value!', 'array' => ['4', '5', '6'] }

    result = Crowd.update_attribute_principal('unittest', attrs)
    
    assert(result)    
  end

  def test_G_remove_attribute_principal
    token = Crowd.authenticate_application

    attrs = ['scalar', 'array']

    result = Crowd.remove_attribute_principal('unittest', attrs)
    
    assert(result)    
  end
  
  def test_H_find_all_principal_names
    token = Crowd.authenticate_application
    
    result = Crowd.find_all_principal_names
    
    assert(result)
  end  
   
  def test_I_add_role
    token = Crowd.authenticate_application    
    result = Crowd.add_role('test_role', 'unit test role', true)    
    assert(result)
  end
  
  def test_J_find_all_role_names
    token = Crowd.authenticate_application    
    result = Crowd.find_all_role_names

    assert(result)
  end
  
  def test_K_add_principal_to_role
    token = Crowd.authenticate_application    
    result = Crowd.add_principal_to_role('unittest', 'test_role')    

    assert(result)
  end

  def test_L_remove_principal_from_role
    token = Crowd.authenticate_application    
    result = Crowd.remove_principal_from_role('unittest', 'test_role')    

    assert(result)
  end
  
  def test_M_remove_role
    token = Crowd.authenticate_application    
    result = Crowd.remove_role('test_role')    

    assert(result)
  end

  def test_N_remove_principal
    token = Crowd.authenticate_application    
    result = Crowd.remove_principal('unittest')    

    assert(result)
  end
  
  def test_C_expired_application_token_gets_reset
    token = Crowd.authenticate_application   
    # Overwrite the token
    Crowd.application_token.token = 'fake'
    assert_equal 'fake', Crowd.application_token.token
    
    # Make a request
    result = Crowd.find_principal_by_username('unittest')
    
    assert_not_equal 'fake', Crowd.application_token.token
  end
  
  def test_is_valid_principal_token_with_invalid_token
    assert !Crowd.is_valid_principal_token?('invalid')
  end
  
  def test_C_is_valid_principal_token_with_valid_token
    valid_principal_token = Crowd.authenticate_principal('unittest', 'unittest')
    
    assert Crowd.is_valid_principal_token?(valid_principal_token)
  end
  
  def test_C_is_valid_principal_token_with_previously_valid_but_invalidated_token
    valid_principal_token = Crowd.authenticate_principal('unittest', 'unittest')
    # Expire the token
    Crowd.invalidate_principal_token(valid_principal_token)
    
    assert !Crowd.is_valid_principal_token?(valid_principal_token)
  end
  
  def test_C_is_valid_principal_token_with_valid_principal_token_and_invalid_application_token
    valid_principal_token = Crowd.authenticate_principal('unittest', 'unittest')
    # Overwrite the token
    Crowd.application_token.token = 'fake'
    assert_equal 'fake', Crowd.application_token.token
    
    # token should be valid, as the application should re-authenticate.
    assert Crowd.is_valid_principal_token?(valid_principal_token)
  end
  
  def test_C_find_principal_by_token_returns_nil_when_token_is_invalid
    valid_principal_token = Crowd.authenticate_principal('unittest', 'unittest')

    assert_not_nil Crowd.find_principal_by_token(valid_principal_token)
    assert_nil Crowd.find_principal_by_token('invalid')
    
  end

end
