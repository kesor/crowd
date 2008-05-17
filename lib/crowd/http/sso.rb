##
# This class is used to manage HTTP authentication. It is the fundamental class for
# web/SSO authentication integration. For most applications, using the following
# methods will be sufficient to achieve SSO:
# authenticate:: authenticate a user
# +is_authenticated?+:: determine if a request is authenticated
# principal:: retrieve the principal for an authenticated request
# logoff:: sign the user out

class Crowd::HTTP::SSO
  @@request = nil
  @@response = nil
  
  ##
  # Retrieve the underlying client properties used
  # to communicate with the Crowd Security Server.
  def client_properties
  end
  
  ## 
  # Retrieve the underlying SecurityServerClient used
  # to communicate with the Crowd Security Server.
  def security_server_client
  end


  ##
  # Sets the underlying principal token
  def principal_token=(token)
  end

  ##
  # Attempts to retrive the principal from the request.
  def principal(request)
  end

  ##
  # Retrieve the Crowd authentication token from the request
  def token(request)
  end
  
  ##
  # Tests whether a request is authenticated via SSO
  def is_authenticated?
  end

  ##
  # Authenticate a remote user using SSO
  def authenticate(username, password)
  end

  ##
  # Verifies the authentication of a principal's username/password,
  #
  # Without validation_factors,
  # This performs an instant verification of username/password with
  # the centralised user repository (Crowd Server).
  # 
  # Given a set of validation factors.
  # This will authenticate the principal using the username and password
  # provided, and will use the validation factors to generate an SSO
  # token. This token can then be used by 3rd party systems to implement
  # SSO or can be ignored to only provide centralised authentication.
  #
  # NOTE: This method will not provide SSO functionality directly - use the
  # <code>authenticate</code> method instead.
  def verify_authentication(username, password, validation_factors = {})
  end

  ##
  # Retrieves validation factors from the request
  # {
  #   'USER_AGENT' => "the User-Agent HTTP header",
  #   'REMOTE_ADDRESS' => "the source IP address of the HTTP request",
  #   'X_FORWARDED_FOR' => Original Address, if present and distinct from the REMOTE_ADDRESS
  # }
  def validation_factors
  end

  ##
  # Log off the SSO authenticated user. This will also effectively
  # log them off from all SSO applications.
  #
  # This will sign out an authenticated user by invalidating their
  # SSO token and removing it from their cookies.
  #
  # If the request is not authenticated, this method will have
  # no effect and will not throw an exception.
  #
  def logoff
  end

  ## 
  # Generate a PrincipalAuthenticationContext object containing the
  # provided username and password, and validation factors from the
  # the request.
  # 
  def principal_authentication_context(username, password)
  end

end
