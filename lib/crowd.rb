#
#  Created by Jason Rimmer, jrimmer@irth.net on 2007-10-16.
#  I hereby place this work that I have authored into the public domain
#  and in the process abandon all copyright protection.
#
require 'rubygems'
gem 'soap4r'

require File.join(File.dirname(__FILE__), 'crowd', 'defaultDriver.rb')
require 'crowd/version'

#
# Place 'obj.wiredump_dev = STDERR' after any SecurityServerPortType
# instantiation to see the raw SOAP calls and responses in a test
# console
#

class Crowd
  #
  # Class variables
  #
    
  private
  
  @@application_token = nil
  
  public
  
  @@crowd_url = nil
  @@crowd_app_name = nil
  @@crowd_app_pword = nil
  
  def self.crowd_url=(value); @@crowd_url = value; end
  def self.crowd_app_name=(value); @@crowd_app_name = value; end
  def self.crowd_app_pword=(value); @@crowd_app_pword = value; end
  
  public
  
  #
  # Exceptions
  #
  class AuthenticationException < Exception; end
  class AuthenticationConnectionException < AuthenticationException; end
  class AuthenticationInvalidCredentialException < AuthenticationException; end
  class AuthenticationInvalidException < AuthenticationException; end
  class AuthenticationObjectNotFoundException < AuthenticationException; end
  class AuthenticationInvalidObject < AuthenticationException; end
  
  #
  # Public methods
  #

  ##
  # Authenticate application
  def self.authenticate_application()
    @@application_token = nil
    
    if @@crowd_app_name.nil?
      @@crowd_app_name = CROWD_APPLICATION_NAME
    end
    if @@crowd_app_pword.nil?
      @@crowd_app_pword = CROWD_APPLICATION_PASSWORD
    end
    
    pword = PasswordCredential.new(@@crowd_app_pword, false)
    ctx = ApplicationAuthenticationContext.new(pword, @@crowd_app_name, nil)
    arg = AuthenticateApplication.new(ctx)

    begin      
      response = server.authenticateApplication(arg)  
    rescue Errno::ECONNREFUSED
      raise AuthenticationConnectionException
    rescue Exception
      raise AuthenticationException, response
    end
  
    if !response.is_a?(AuthenticateApplicationResponse)
      raise AuthenticationException, response
    end
    
    @@application_token = AuthenticatedToken.new(@@crowd_app_name, response.out.token)
    
    response.out.token
  end
  
  ##
  # Authenticate principal
  def self.authenticate_principal(username, password)
    response = authenticated_connection do      
      pword = PasswordCredential.new(password, false)
      ctx = PrincipalAuthenticationContext.new(@@application_token.name, pword, username, nil)
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
      when nil #no reponse      
        raise AuthenticationInvalidCredentialException, response
      else
        raise AuthenticationException, response
    end
  end
  
  ##
  # Is valid principal token?
  def self.is_valid_principal_token?(principal_token, validation_factors = [])
    response = authenticated_connection do      
      arg = IsValidPrincipalToken.new(@@application_token, principal_token, validation_factors)
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
  rescue SOAP::FaultError => e
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
     
  # Has the application been authenticated?
  def self.application_auth_check
    authenticate_application if @@application_token.nil?
  end
  
  # Shorthand for getting the security server object
  def self.server
    SecurityServerPortType.new(@@crowd_url)
  end
  
  # Wrapper for catching common exceptions.  Also allows the application a chance
  # to re-authenticate if the token is invalid.
  def self.authenticated_connection
    raise ArgumentError unless block_given?
    
    application_auth_check
    response = yield
  rescue AuthenticationException
    # Push the response into the exception message
    raise AuthenticationException, response
  rescue Errno::ECONNREFUSED
    raise AuthenticationConnectionException
  rescue SOAP::FaultError => e
    # If the application token is invalid/expired, we'll give it one more shot.
    if e.message.include?('Invalid application client')
      authenticate_application
      response =  yield
    else
      # It may not always be a not found case but until the type of
      # FaultError is known, which has not been able to be determined
      raise AuthenticationObjectNotFoundException, e.message
    end
  rescue Exception
    raise AuthenticationException, response
  ensure
    if response.is_a?(InvalidAuthorizationTokenException)
      authenticate_application
      response = yield
    end
    response
  end
end