#!/usr/bin/env ruby

#
#  Created by Evgeny Zislis, evgeny.zislis@gmail.com on 2008-05-15
#  I hereby place this work that I have authored into the public domain
#  and in the process abandon all copyright protection.
#
require 'rubygems'
gem 'rspec'
gem 'soap4r' 

require File.join(File.dirname(__FILE__), '..', 'lib', 'crowd')

# need a special accessor for tests
class Crowd
  def self.application_token
    @@application_token
  end
  def self.application_token=(value)
    @@application_token = value
  end
end

describe Crowd do
  before(:all) do
    Crowd.crowd_url = 'http://127.0.0.1:8095/crowd/services/SecurityServer'
    Crowd.crowd_app_name = 'soaptest'
    Crowd.crowd_app_pword = 'soaptest'
  end
  
  it "should get an application authentication token" do
    Crowd.authenticate_application.should_not be_nil
  end
  
  it "should add a principal" do
    Crowd.add_principal('unittest','unittest','unit test user', true,
      { 'mail' => 'unittest@unittest.com' }).should_not be_nil
  end
  
  it "should find valid principal by name" do
    result = Crowd.find_principal_by_username('unittest')
    result[:name].should eql("unittest")
  end
  
  it "should find invalid principal by name" do
    lambda {
      Crowd.find_principal_by_username('asfasdasdasdas')
    }.should raise_error(Crowd::AuthenticationObjectNotFoundException)
  end
  
  it "should add attributes to principal" do
    attributes = { 'scalar' => 'value', 'array' => ['1','2','3'] }
    Crowd.add_attribute_principal('unittest', attributes).should be_true
  end
  
  it "should update attributes on principal" do
    attributes = { 'scalar' => 'value!', 'array' => ['4','5','6'] }
    Crowd.update_attribute_principal('unittest', attributes).should be_true
  end
  
  it "should remove attributes from principal" do
    attributes = ['scalar', 'array']
    Crowd.remove_attribute_principal('unittest', attributes).should eql(attributes)
  end
  
  it "should find all principle names" do
    Crowd.find_all_principal_names.should include('unittest')
  end
  
  it "should add role" do
    Crowd.add_role('test_role', 'unit test role', true).should be_true
  end
  
  it "should find all role names" do
    Crowd.find_all_role_names.should include('test_role')
  end

  it "should add principal to role" do
    Crowd.add_principal_to_role('unittest','test_role').should be_true
  end

  it "should remove principal from role" do
    Crowd.remove_principal_from_role('unittest', 'test_role').should be_true
  end
  
  it "should remove role" do
    Crowd.remove_role('test_role').should be_true
  end

  it "should reset expired application token" do
    Crowd.application_token.token = 'fake'
    Crowd.application_token.token.should eql('fake')
    Crowd.find_principal_by_username('unittest')
    Crowd.application_token.token.should_not eql('fake')
  end
  
  it "should validate principal token with invalid token" do
    Crowd.is_valid_principal_token?('invalid').should be_false
  end

  it "should validate principal token with valid token" do
    token = Crowd.authenticate_principal('unittest','unittest')
    Crowd.is_valid_principal_token?(token).should be_true
  end
  
  it "should expire valid principal tokens" do
    token = Crowd.authenticate_principal('unittest','unittest')
    # expire the token
    Crowd.invalidate_principal_token(token)
    Crowd.is_valid_principal_token?(token).should be_false
  end
  
  it "should validate principal token when application token invalid" do
    token = Crowd.authenticate_principal('unittest','unittest')
    # overwrite application token
    Crowd.application_token.token = 'fake'
    Crowd.application_token.token.should eql('fake')
    # application should re-authenticate
    Crowd.is_valid_principal_token?(token).should be_true
  end
  
  it "should return nil when finding principal by invalid token" do
    token = Crowd.authenticate_principal('unittest','unittest')
    Crowd.find_principal_by_token(token).should_not be_nil
    Crowd.find_principal_by_token('invalid').should be_nil
  end

  it "should remove principal" do
    Crowd.remove_principal('unittest').should be_true
  end
  
  it "should find all groups" do
    Crowd.find_all_group_names.should be_true
  end

end