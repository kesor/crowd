#
#  Updated by Evgeny Zislis, evgeny.zislis@gmail.con on 2008-05-15
#  Created by Jason Rimmer, jrimmer@irth.net on 2007-10-16.
#  I hereby place this work that I have authored into the public domain
#  and in the process abandon all copyright protection.
#
require 'rubygems'
gem 'soap4r'

require File.join(File.dirname(__FILE__), 'crowd', 'version')
require File.join(File.dirname(__FILE__), 'crowd', 'soap', 'driver.rb')

#
# Place 'server.wiredump_dev = STDERR' after any to see
# the raw SOAP calls and responses in a test console
#

class Crowd

  #
  # shortcircuit Crowd::SOAP
  #
  include SOAP

  #
  # Class variables
  #
  private
      
  @@application_token = nil
  @@crowd_app_name = nil
  @@crowd_app_pword = nil
  
  public
  
  @@crowd_url = nil
  
  def self.crowd_url=(value); @@crowd_url = value; end
  def self.crowd_app_name=(value); @@crowd_app_name = value; end
  def self.crowd_app_pword=(value); @@crowd_app_pword = value; end
  
  
  # for testing
  def self.crowd_url; @@crowd_url; end
  def self.crowd_app_name; @@crowd_app_name; end
  def self.crowd_app_pword; @@crowd_app_pword; end
  def self.application_token; @@application_token; end
  
  public
  
  #
  # Exceptions
  #
  class AuthenticationException < StandardError; end
  class AuthenticationConnectionException < ::Errno::ECONNREFUSED; end
  class AuthenticationInvalidCredentialException < AuthenticationException; end
  class AuthenticationInvalidException < AuthenticationException; end
  class AuthenticationObjectNotFoundException < AuthenticationException; end
  
  #
  # Public methods
  #

  ##
  # Authenticates an application client to the Crowd security server.
  def self.authenticate_application(validation_factors = {})
    pword = PasswordCredential.new(@@crowd_app_pword, false)
    aovf = helper_validation_factors(validation_factors)
    ctx = ApplicationAuthenticationContext.new(pword, @@crowd_app_name, aovf)
    arg = AuthenticateApplication.new(ctx)
    begin
      response = server.authenticateApplication(arg)
    rescue Errno::ECONNREFUSED => e
      raise AuthenticationConnectionException, e
    end
    @@application_token = response.out
  end
  
  ##
  # Authenticates a principal verses the calling who is in the application's assigned directory.
  #
  # To use SSO, set:
  #   validation_factors = { 'USER_AGENT' => '...', 'REMOTE_ADDRESS' => '...' }
  #   for proxy users { 'X_FORWARDED_FOR" => '...' } might be useful as well.
  def self.authenticate_principal(username, password, validation_factors = {})
    response = authenticated_connection do
      pword = PasswordCredential.new(password, false)
      aovf = helper_validation_factors(validation_factors)
      ctx = PrincipalAuthenticationContext.new(@@application_token.name, pword, username, aovf)
      arg = AuthenticatePrincipal.new(@@application_token, ctx)

      server.authenticatePrincipal(arg)      
    end    
    
    #evaluate the response.  ideally, the authenticatePrincipal call should
    #return an AuthenticationInvalidCredentialException and we can handle it more
    #nicely below.
    case response
      when AuthenticatePrincipalResponse        
        return response.out
      when InvalidAuthenticationException
        return nil      
      when InvalidAccountException
        return nil
      when nil #no reponse      
        raise AuthenticationInvalidCredentialException, response
      else
        raise AuthenticationException, response
    end
  end
  
  ##
  # Authenticates a principal without validating a password.
  def self.create_principal_token(username, validation_factors = {})
    response = authenticated_connection do
      aovf = helper_validation_factors(validation_factors)
      arg = CreatePrincipalToken.new(@@application_token, username, aovf)
      server.createPrincipalToken(arg)
    end
    response.out
  end
  
  ##
  # Checks if the principal's current token is still valid.
  def self.is_valid_principal_token?(principal_token, validation_factors = {})
    response = authenticated_connection do
      aovf = ArrayOfValidationFactor.new
      validation_factors.each { |name,value| aovf << ValidationFactor.new(name, value)}
      arg = IsValidPrincipalToken.new(@@application_token, principal_token, aovf)
      server.isValidPrincipalToken(arg)      
    end    
    
    case response
      when IsValidPrincipalTokenResponse        
        return response.out
      else
        raise AuthenticationException, response
    end
  end
  
  ##
  # Add Principal
  def self.add_principal(username, password, description, is_active, attributes)
    response = authenticated_connection do
      attrs = ArrayOfSOAPAttribute.new()

      attributes.each do |key, val|
        if (val.class == Array)
          attrVal = ArrayOfString.new(val)
        else
          attrVal = ArrayOfString.new
          attrVal << val
        end
        attrs << SOAPAttribute.new(key, attrVal)
      end

      principal = SOAPPrincipal.new(nil, is_active, attrs, nil, description, nil, nil, username)
      pword = PasswordCredential.new(password, false)
      arg = AddPrincipal.new(@@application_token, principal, pword)

      server.addPrincipal(arg)
    end

    case response
      when AddPrincipalResponse
        return true
      when InvalidCredentialException
        raise AuthenticationInvalidCredentalException
      when InvalidPrincipalException
        raise AuthenticationInvalidException, response
      else
        raise AuthenticationException, response
    end
  end
  
  ##
  # Find Principal via username
  def self.find_principal_by_username(username)
    response = authenticated_connection do
      arg = FindPrincipalByName.new(@@application_token, username)
      server.findPrincipalByName(arg)      
    end

    case response
      when FindPrincipalByNameResponse
        return parse_principal(response.out)
      when ObjectNotFoundException
        return nil
      else
        raise AuthenticationException, response
    end
  end
  
  ##
  # Find Principal via token
  def self.find_principal_by_token(token)
    response = authenticated_connection do
      arg = FindPrincipalByToken.new(@@application_token, token)
      server.findPrincipalByToken(arg)      
    end
    case response
      when FindPrincipalByTokenResponse
        return parse_principal(response.out)
      when ObjectNotFoundException
        return nil
      else
        raise AuthenticationException, response
    end 
  rescue AuthenticationObjectNotFoundException
    return nil
  rescue ::SOAP::FaultError => e
    raise AuthenticationException, e.message
  end
  
  
  ##
  # Invalidate Principal Token
  def self.invalidate_principal_token(token)
    response = authenticated_connection do 
      arg = InvalidatePrincipalToken.new(@@application_token, token)
      server.invalidatePrincipalToken(arg)
    end
    
    case response
      when InvalidatePrincipalTokenResponse
        return true
      else
        raise AuthenticationException, response
    end
  end
  
  ##
  # Remove principal attribute 
  def self.remove_attribute_principal(username, attributes)    
    if(attributes.class != Array)
      attributes = [attributes]
    end
    
    attributes.each do |attr|
      response = authenticated_connection do
        arg = RemoveAttributeFromPrincipal.new(@@application_token, username, attr)
        server.removeAttributeFromPrincipal(arg)
      end

      case response
        when RemoveAttributeFromPrincipalResponse
          # Burying as this means it succeeded
        when ObjectNotFoundException
          raise AuthenticationObjectNotFoundException
        else
          raise AuthenticationException, response
      end
    end
  end
  
  ##
  # Add attribute to principal
  def self.add_attribute_principal(username, attributes)
    attributes.each do |key, val|
      response = authenticated_connection do
        if(val.class == Array)
          valArray = ArrayOfString.new(val)
        else
          valArray = ArrayOfString.new
          valArray << val
        end

        tuple = SOAPAttribute.new(key, valArray)
        arg = AddAttributeToPrincipal.new(@@application_token, username, tuple)
        
        server.addAttributeToPrincipal(arg)
      end

      case response
        when AddAttributeToPrincipalResponse
          # Burying it because this means it was successful
        when ObjectNotFoundException
          raise AuthenticationObjectNotFoundException
        else
          raise AuthenticationException, response
      end
    end
    
    true
  end
  
  ##
  # Update attribute on principal
  def self.update_attribute_principal(username, attributes)    
    attributes.each do |key, val|
      response = authenticated_connection do
        if val.is_a?(Array)
          valArray = ArrayOfString.new(val)
        else
          valArray = ArrayOfString.new
          valArray << val
        end

        tuple = SOAPAttribute.new(key, valArray)
        arg = UpdatePrincipalAttribute.new(@@application_token, username, tuple)
        
        server.updatePrincipalAttribute(arg)
      end

      case response
        when UpdatePrincipalAttributeResponse
          # Burying as it worked
        when ObjectNotFoundException
          raise AuthenticationObjectNotFoundException
        else
          raise AuthenticationException, response
      end
    end
    
    true
  end
  
  ##
  # Remove principal
  def self.remove_principal(username)
    response = authenticated_connection do
      arg = RemovePrincipal.new(@@application_token, username)        
      server.removePrincipal(arg)
    end
    
    case response
      when RemovePrincipalResponse
        return true
      when ObjectNotFoundException
        raise AuthenticationObjectNotFoundException
      else
        raise AuthenticationException, response
    end    
  end
  
  ##
  # Find all principal names
  def self.find_all_principal_names    
    response = authenticated_connection do
      arg = FindAllPrincipalNames.new(@@application_token)
      server.findAllPrincipalNames(arg)
    end
    
    case response
      when FindAllPrincipalNamesResponse
        return response.out
      when ObjectNotFoundException
        return {}
      else
        raise AuthenticationException, response
    end
  end

  ##
  # Find all role names
  def self.find_all_role_names
    response = authenticated_connection do 
      arg = FindAllRoleNames.new(@@application_token)
      server.findAllRoleNames(arg)
    end
    
    case response
      when FindAllRoleNamesResponse
        return response.out
      when ObjectNotFoundException
        return {}
      else
        raise AuthenticationException, response
    end
  end
  
  ##
  # Add Role
  def self.add_role(name, description, is_active)
    response = authenticated_connection do 
      role = SOAPRole.new(nil, is_active, nil, nil, description, nil, nil, nil, name)
      arg = AddRole.new(@@application_token, role)
      server.addRole(arg)
    end
    
    case response
      when AddRoleResponse
        return true
      when ObjectNotFoundException
        return AuthenticationObjectNotFoundException
      else
        raise AuthenticationException, response
    end
  end
  
  ##
  # Add Principal to Role
  def self.add_principal_to_role(username, role)    
    response = authenticated_connection do         
      arg = AddPrincipalToRole.new(@@application_token, username, role)
      #raise arg.to_yaml
      server.addPrincipalToRole(arg)
    end
    
    case response
      when AddPrincipalToRoleResponse
        return true
      when ObjectNotFoundException
        return AuthenticationObjectNotFoundException
      else
        raise AuthenticationException, response
    end
  end
  
  ##
  # Remove Principal form Role
  def self.remove_principal_from_role(username, role)
    response = authenticated_connection do 
      arg = RemovePrincipalFromRole.new(@@application_token, username, role)
      server.removePrincipalFromRole(arg)
    end
    
    case response
      when RemovePrincipalFromRoleResponse
        return true
      when ObjectNotFoundException
        return AuthenticationObjectNotFoundException
      else
        raise AuthenticationException, response
    end
  end

  ##
  # Is Role Member
  def self.is_role_member(username, role)
    response = authenticated_connection do 
      arg = IsRoleMember.new(@@application_token, username, role )
      server.isRoleMember(arg)
    end
    
    case response
      when IsRoleMemberResponse
        return response.out
      when ObjectNotFoundException
        return AuthenticationObjectNotFoundException
      else
        raise AuthenticationException, response
    end
  end
  
  
  
  ##
  # Remove Role
  def self.remove_role(role)
    response = authenticated_connection do 
      arg = RemoveRole.new(@@application_token, role)
      server.removeRole(arg)
    end
    
    case response
      when RemoveRoleResponse
        return true        
      when ObjectNotFoundException
        return AuthenticationObjectNotFoundException
      else
        raise AuthenticationException, response
    end
  end
  
  ##
  # Is Group Member
  def self.is_group_member(username, group)
    response = authenticated_connection do 
      arg = IsGroupMember.new(@@application_token, group, username )
      server.isGroupMember(arg)
    end
    
    case response
      when IsGroupMemberResponse
        return response.out
      when ObjectNotFoundException
        return AuthenticationObjectNotFoundException
      else
        raise AuthenticationException, response
    end
  end
  
  def self.find_all_group_names
    response = authenticated_connection do 
      arg = FindAllGroupNames.new(@@application_token)
      server.findAllGroupNames(arg)
    end
    
    case response
      when FindAllGroupNamesResponse
        return response.out
      when ObjectNotFoundException
        return AuthenticationObjectNotFoundException
      else
        raise AuthenticationException, response
    end
  end
  
  def self.find_all_groups_for_principal(username)
     response = authenticated_connection do 
       arg = FindGroupMemberships.new(@@application_token, username)
       server.findGroupMemberships(arg)
     end
     
     case response
       when FindGroupMembershipsResponse
         return response.out
       when ObjectNotFoundException
         return AuthenticationObjectNotFoundException
       else
         raise AuthenticationException, response
     end
  end
  
  def self.get_group(name)
    response = authenticated_connection do 
       arg = FindGroupByName.new(@@application_token, name)
       server.findGroupByName(arg)
     end
     
     case response
       when FindGroupByNameResponse
         return response.out
       when ObjectNotFoundException
         return AuthenticationObjectNotFoundException
       else
         raise AuthenticationException, response
     end
  end

  private

  # Parse the user
  def self.parse_principal(rp)
    p = {}
    p[:id] = rp.iD
    p[:active] = rp.active
    p[:conception] = rp.conception
    p[:description] = rp.description
    p[:directoryID] = rp.directoryID
    p[:lastModified] = rp.lastModified
    p[:name] = rp.name

    p[:attributes] = {}
    
    rp.attributes.each do |attr|
      case attr.values.size
        when 0
          p[:attributes][attr.name.to_sym] = nil
        when 1
          p[:attributes][attr.name.to_sym] = attr.values[0]
        else
          p[:attributes][attr.name.to_sym] = attr.values.to_a
      end
    end

    return p
  end

  # Create ArrayOfValidationFactor from a ruby key=>value hash
  def self.helper_validation_factors(validation_factors = {})
    aovf = ArrayOfValidationFactor.new
    validation_factors.each { |name,value| aovf << ValidationFactor.new(name, value)}
  end
     
  # Has the application been authenticated?
  def self.application_auth_check
    authenticate_application if @@application_token.nil?
  end
  
  # Shorthand for getting the security server object
  def self.server
    @@server ||= SecurityServerPortType.new(@@crowd_url)
  end
  
  # Wrapper for catching common exceptions.  Also allows the application a chance
  # to re-authenticate if the token is invalid.
  def self.authenticated_connection
    raise ArgumentError unless block_given?
    
    application_auth_check
    response = yield
  rescue AuthenticationException => e
    # Push the response into the exception message
    raise AuthenticationException, e
  rescue Errno::ECONNREFUSED => e
    raise AuthenticationConnectionException, e
  rescue ::SOAP::FaultError => e
    # We'll retry once more on any fault.
    authenticate_application
    response =  yield
  rescue Exception, e
    raise AuthenticationException, e
  ensure
    if response.is_a?(InvalidAuthorizationTokenException)
      authenticate_application
      response = yield
    end
    response
  end
end
