require File.join(File.dirname(__FILE__), 'default.rb')
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsAuthenticationIntegrationCrowdAtlassianCom = "http://authentication.integration.crowd.atlassian.com"
  NsExceptionIntegrationCrowdAtlassianCom = "http://exception.integration.crowd.atlassian.com"
  NsLangJava = "http://lang.java"
  NsRmiJava = "http://rmi.java"
  NsSecurityServer = "urn:SecurityServer"
  NsSoapIntegrationCrowdAtlassianCom = "http://soap.integration.crowd.atlassian.com"

  EncodedRegistry.register(
    :class => AuthenticatedToken,
    :schema_type => XSD::QName.new(NsAuthenticationIntegrationCrowdAtlassianCom, "AuthenticatedToken"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["token", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PasswordCredential,
    :schema_type => XSD::QName.new(NsAuthenticationIntegrationCrowdAtlassianCom, "PasswordCredential"),
    :schema_element => [
      ["credential", "SOAP::SOAPString", [0, 1]],
      ["encryptedCredential", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfValidationFactor,
    :schema_type => XSD::QName.new(NsAuthenticationIntegrationCrowdAtlassianCom, "ArrayOfValidationFactor"),
    :schema_element => [
      ["validationFactor", ["ValidationFactor[]", XSD::QName.new(NsAuthenticationIntegrationCrowdAtlassianCom, "ValidationFactor")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ValidationFactor,
    :schema_type => XSD::QName.new(NsAuthenticationIntegrationCrowdAtlassianCom, "ValidationFactor"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PrincipalAuthenticationContext,
    :schema_type => XSD::QName.new(NsAuthenticationIntegrationCrowdAtlassianCom, "PrincipalAuthenticationContext"),
    :schema_element => [
      ["application", "SOAP::SOAPString", [0, 1]],
      ["credential", "PasswordCredential", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["validationFactors", "ArrayOfValidationFactor", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ApplicationAuthenticationContext,
    :schema_type => XSD::QName.new(NsAuthenticationIntegrationCrowdAtlassianCom, "ApplicationAuthenticationContext"),
    :schema_element => [
      ["credential", "PasswordCredential", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["validationFactors", "ArrayOfValidationFactor", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfString,
    :schema_type => XSD::QName.new(NsSecurityServer, "ArrayOfString"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfSOAPNestableGroup,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "ArrayOfSOAPNestableGroup"),
    :schema_element => [
      ["sOAPNestableGroup", ["SOAPNestableGroup[]", XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SOAPNestableGroup")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SOAPNestableGroup,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SOAPNestableGroup"),
    :schema_element => [
      ["iD", ["SOAP::SOAPLong", XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "ID")], [0, 1]],
      ["active", "SOAP::SOAPBoolean", [0, 1]],
      ["attributes", "ArrayOfSOAPAttribute", [0, 1]],
      ["conception", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["directoryID", "SOAP::SOAPLong", [0, 1]],
      ["groupMembers", "ArrayOfString", [0, 1]],
      ["lastModified", "SOAP::SOAPDateTime", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfSOAPAttribute,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "ArrayOfSOAPAttribute"),
    :schema_element => [
      ["sOAPAttribute", ["SOAPAttribute[]", XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SOAPAttribute")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SOAPAttribute,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SOAPAttribute"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["values", "ArrayOfString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SOAPGroup,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SOAPGroup"),
    :schema_element => [
      ["iD", ["SOAP::SOAPLong", XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "ID")], [0, 1]],
      ["active", "SOAP::SOAPBoolean", [0, 1]],
      ["attributes", "ArrayOfSOAPAttribute", [0, 1]],
      ["conception", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["directoryID", "SOAP::SOAPLong", [0, 1]],
      ["lastModified", "SOAP::SOAPDateTime", [0, 1]],
      ["members", "ArrayOfString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SOAPPrincipal,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SOAPPrincipal"),
    :schema_element => [
      ["iD", ["SOAP::SOAPLong", XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "ID")], [0, 1]],
      ["active", "SOAP::SOAPBoolean", [0, 1]],
      ["attributes", "ArrayOfSOAPAttribute", [0, 1]],
      ["conception", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["directoryID", "SOAP::SOAPLong", [0, 1]],
      ["lastModified", "SOAP::SOAPDateTime", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SOAPCookieInfo,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SOAPCookieInfo"),
    :schema_element => [
      ["domain", "SOAP::SOAPString", [0, 1]],
      ["secure", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfSearchRestriction,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "ArrayOfSearchRestriction"),
    :schema_element => [
      ["searchRestriction", ["SearchRestriction[]", XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SearchRestriction")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SearchRestriction,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SearchRestriction"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfSOAPGroup,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "ArrayOfSOAPGroup"),
    :schema_element => [
      ["sOAPGroup", ["SOAPGroup[]", XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SOAPGroup")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SOAPRole,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SOAPRole"),
    :schema_element => [
      ["iD", ["SOAP::SOAPLong", XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "ID")], [0, 1]],
      ["active", "SOAP::SOAPBoolean", [0, 1]],
      ["attributes", "ArrayOfSOAPAttribute", [0, 1]],
      ["conception", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["directoryID", "SOAP::SOAPLong", [0, 1]],
      ["lastModified", "SOAP::SOAPDateTime", [0, 1]],
      ["members", "ArrayOfString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfSOAPRole,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "ArrayOfSOAPRole"),
    :schema_element => [
      ["sOAPRole", ["SOAPRole[]", XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SOAPRole")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfSOAPPrincipal,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "ArrayOfSOAPPrincipal"),
    :schema_element => [
      ["sOAPPrincipal", ["SOAPPrincipal[]", XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SOAPPrincipal")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidAuthorizationTokenException,
    :schema_type => XSD::QName.new(NsExceptionIntegrationCrowdAtlassianCom, "InvalidAuthorizationTokenException"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => InvalidGroupException,
    :schema_type => XSD::QName.new(NsExceptionIntegrationCrowdAtlassianCom, "InvalidGroupException"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => ApplicationPermissionException,
    :schema_type => XSD::QName.new(NsExceptionIntegrationCrowdAtlassianCom, "ApplicationPermissionException"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => ObjectNotFoundException,
    :schema_type => XSD::QName.new(NsExceptionIntegrationCrowdAtlassianCom, "ObjectNotFoundException"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => InvalidTokenException,
    :schema_type => XSD::QName.new(NsExceptionIntegrationCrowdAtlassianCom, "InvalidTokenException"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => InvalidCredentialException,
    :schema_type => XSD::QName.new(NsExceptionIntegrationCrowdAtlassianCom, "InvalidCredentialException"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => InvalidPrincipalException,
    :schema_type => XSD::QName.new(NsExceptionIntegrationCrowdAtlassianCom, "InvalidPrincipalException"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => ApplicationAccessDeniedException,
    :schema_type => XSD::QName.new(NsExceptionIntegrationCrowdAtlassianCom, "ApplicationAccessDeniedException"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => InvalidAuthenticationException,
    :schema_type => XSD::QName.new(NsExceptionIntegrationCrowdAtlassianCom, "InvalidAuthenticationException"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => InactiveAccountException,
    :schema_type => XSD::QName.new(NsExceptionIntegrationCrowdAtlassianCom, "InactiveAccountException"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => InvalidRoleException,
    :schema_type => XSD::QName.new(NsExceptionIntegrationCrowdAtlassianCom, "InvalidRoleException"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => InvalidEmailAddressException,
    :schema_type => XSD::QName.new(NsExceptionIntegrationCrowdAtlassianCom, "InvalidEmailAddressException"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => RemoteException,
    :schema_type => XSD::QName.new(NsRmiJava, "RemoteException"),
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["message", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Throwable,
    :schema_type => XSD::QName.new(NsLangJava, "Throwable"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AuthenticatedToken,
    :schema_type => XSD::QName.new(NsAuthenticationIntegrationCrowdAtlassianCom, "AuthenticatedToken"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["token", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PasswordCredential,
    :schema_type => XSD::QName.new(NsAuthenticationIntegrationCrowdAtlassianCom, "PasswordCredential"),
    :schema_element => [
      ["credential", "SOAP::SOAPString", [0, 1]],
      ["encryptedCredential", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfValidationFactor,
    :schema_type => XSD::QName.new(NsAuthenticationIntegrationCrowdAtlassianCom, "ArrayOfValidationFactor"),
    :schema_element => [
      ["validationFactor", ["ValidationFactor[]", XSD::QName.new(NsAuthenticationIntegrationCrowdAtlassianCom, "ValidationFactor")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ValidationFactor,
    :schema_type => XSD::QName.new(NsAuthenticationIntegrationCrowdAtlassianCom, "ValidationFactor"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PrincipalAuthenticationContext,
    :schema_type => XSD::QName.new(NsAuthenticationIntegrationCrowdAtlassianCom, "PrincipalAuthenticationContext"),
    :schema_element => [
      ["application", "SOAP::SOAPString", [0, 1]],
      ["credential", "PasswordCredential", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["validationFactors", "ArrayOfValidationFactor", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApplicationAuthenticationContext,
    :schema_type => XSD::QName.new(NsAuthenticationIntegrationCrowdAtlassianCom, "ApplicationAuthenticationContext"),
    :schema_element => [
      ["credential", "PasswordCredential", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["validationFactors", "ArrayOfValidationFactor", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfString,
    :schema_type => XSD::QName.new(NsSecurityServer, "ArrayOfString"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSOAPNestableGroup,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "ArrayOfSOAPNestableGroup"),
    :schema_element => [
      ["sOAPNestableGroup", ["SOAPNestableGroup[]", XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SOAPNestableGroup")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SOAPNestableGroup,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SOAPNestableGroup"),
    :schema_element => [
      ["iD", ["SOAP::SOAPLong", XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "ID")], [0, 1]],
      ["active", "SOAP::SOAPBoolean", [0, 1]],
      ["attributes", "ArrayOfSOAPAttribute", [0, 1]],
      ["conception", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["directoryID", "SOAP::SOAPLong", [0, 1]],
      ["groupMembers", "ArrayOfString", [0, 1]],
      ["lastModified", "SOAP::SOAPDateTime", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSOAPAttribute,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "ArrayOfSOAPAttribute"),
    :schema_element => [
      ["sOAPAttribute", ["SOAPAttribute[]", XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SOAPAttribute")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SOAPAttribute,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SOAPAttribute"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["values", "ArrayOfString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SOAPGroup,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SOAPGroup"),
    :schema_element => [
      ["iD", ["SOAP::SOAPLong", XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "ID")], [0, 1]],
      ["active", "SOAP::SOAPBoolean", [0, 1]],
      ["attributes", "ArrayOfSOAPAttribute", [0, 1]],
      ["conception", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["directoryID", "SOAP::SOAPLong", [0, 1]],
      ["lastModified", "SOAP::SOAPDateTime", [0, 1]],
      ["members", "ArrayOfString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SOAPPrincipal,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SOAPPrincipal"),
    :schema_element => [
      ["iD", ["SOAP::SOAPLong", XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "ID")], [0, 1]],
      ["active", "SOAP::SOAPBoolean", [0, 1]],
      ["attributes", "ArrayOfSOAPAttribute", [0, 1]],
      ["conception", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["directoryID", "SOAP::SOAPLong", [0, 1]],
      ["lastModified", "SOAP::SOAPDateTime", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SOAPCookieInfo,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SOAPCookieInfo"),
    :schema_element => [
      ["domain", "SOAP::SOAPString", [0, 1]],
      ["secure", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSearchRestriction,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "ArrayOfSearchRestriction"),
    :schema_element => [
      ["searchRestriction", ["SearchRestriction[]", XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SearchRestriction")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchRestriction,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SearchRestriction"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSOAPGroup,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "ArrayOfSOAPGroup"),
    :schema_element => [
      ["sOAPGroup", ["SOAPGroup[]", XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SOAPGroup")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SOAPRole,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SOAPRole"),
    :schema_element => [
      ["iD", ["SOAP::SOAPLong", XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "ID")], [0, 1]],
      ["active", "SOAP::SOAPBoolean", [0, 1]],
      ["attributes", "ArrayOfSOAPAttribute", [0, 1]],
      ["conception", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["directoryID", "SOAP::SOAPLong", [0, 1]],
      ["lastModified", "SOAP::SOAPDateTime", [0, 1]],
      ["members", "ArrayOfString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSOAPRole,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "ArrayOfSOAPRole"),
    :schema_element => [
      ["sOAPRole", ["SOAPRole[]", XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SOAPRole")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSOAPPrincipal,
    :schema_type => XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "ArrayOfSOAPPrincipal"),
    :schema_element => [
      ["sOAPPrincipal", ["SOAPPrincipal[]", XSD::QName.new(NsSoapIntegrationCrowdAtlassianCom, "SOAPPrincipal")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidAuthorizationTokenException,
    :schema_type => XSD::QName.new(NsExceptionIntegrationCrowdAtlassianCom, "InvalidAuthorizationTokenException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => InvalidGroupException,
    :schema_type => XSD::QName.new(NsExceptionIntegrationCrowdAtlassianCom, "InvalidGroupException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ApplicationPermissionException,
    :schema_type => XSD::QName.new(NsExceptionIntegrationCrowdAtlassianCom, "ApplicationPermissionException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ObjectNotFoundException,
    :schema_type => XSD::QName.new(NsExceptionIntegrationCrowdAtlassianCom, "ObjectNotFoundException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => InvalidTokenException,
    :schema_type => XSD::QName.new(NsExceptionIntegrationCrowdAtlassianCom, "InvalidTokenException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => InvalidCredentialException,
    :schema_type => XSD::QName.new(NsExceptionIntegrationCrowdAtlassianCom, "InvalidCredentialException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => InvalidPrincipalException,
    :schema_type => XSD::QName.new(NsExceptionIntegrationCrowdAtlassianCom, "InvalidPrincipalException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ApplicationAccessDeniedException,
    :schema_type => XSD::QName.new(NsExceptionIntegrationCrowdAtlassianCom, "ApplicationAccessDeniedException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => InvalidAuthenticationException,
    :schema_type => XSD::QName.new(NsExceptionIntegrationCrowdAtlassianCom, "InvalidAuthenticationException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => InactiveAccountException,
    :schema_type => XSD::QName.new(NsExceptionIntegrationCrowdAtlassianCom, "InactiveAccountException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => InvalidRoleException,
    :schema_type => XSD::QName.new(NsExceptionIntegrationCrowdAtlassianCom, "InvalidRoleException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => InvalidEmailAddressException,
    :schema_type => XSD::QName.new(NsExceptionIntegrationCrowdAtlassianCom, "InvalidEmailAddressException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => RemoteException,
    :schema_type => XSD::QName.new(NsRmiJava, "RemoteException"),
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["message", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Throwable,
    :schema_type => XSD::QName.new(NsLangJava, "Throwable"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => FindAllGroupRelationships,
    :schema_name => XSD::QName.new(NsSecurityServer, "findAllGroupRelationships"),
    :schema_element => [
      ["in0", "AuthenticatedToken"]
    ]
  )

  LiteralRegistry.register(
    :class => FindAllGroupRelationshipsResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "findAllGroupRelationshipsResponse"),
    :schema_element => [
      ["out", "ArrayOfSOAPNestableGroup"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidAuthorizationTokenException,
    :schema_name => XSD::QName.new(NsSecurityServer, "InvalidAuthorizationTokenException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => RemoteException,
    :schema_name => XSD::QName.new(NsSecurityServer, "RemoteException"),
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["message", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddGroup,
    :schema_name => XSD::QName.new(NsSecurityServer, "addGroup"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAPGroup"]
    ]
  )

  LiteralRegistry.register(
    :class => AddGroupResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "addGroupResponse"),
    :schema_element => [
      ["out", "SOAPGroup"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidGroupException,
    :schema_name => XSD::QName.new(NsSecurityServer, "InvalidGroupException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ApplicationPermissionException,
    :schema_name => XSD::QName.new(NsSecurityServer, "ApplicationPermissionException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AddPrincipalToRole,
    :schema_name => XSD::QName.new(NsSecurityServer, "addPrincipalToRole"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"],
      ["in2", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AddPrincipalToRoleResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "addPrincipalToRoleResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ObjectNotFoundException,
    :schema_name => XSD::QName.new(NsSecurityServer, "ObjectNotFoundException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => FindPrincipalByToken,
    :schema_name => XSD::QName.new(NsSecurityServer, "findPrincipalByToken"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => FindPrincipalByTokenResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "findPrincipalByTokenResponse"),
    :schema_element => [
      ["out", "SOAPPrincipal"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidTokenException,
    :schema_name => XSD::QName.new(NsSecurityServer, "InvalidTokenException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => UpdatePrincipalCredential,
    :schema_name => XSD::QName.new(NsSecurityServer, "updatePrincipalCredential"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"],
      ["in2", "PasswordCredential"]
    ]
  )

  LiteralRegistry.register(
    :class => UpdatePrincipalCredentialResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "updatePrincipalCredentialResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => InvalidCredentialException,
    :schema_name => XSD::QName.new(NsSecurityServer, "InvalidCredentialException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetGrantedAuthorities,
    :schema_name => XSD::QName.new(NsSecurityServer, "getGrantedAuthorities"),
    :schema_element => [
      ["in0", "AuthenticatedToken"]
    ]
  )

  LiteralRegistry.register(
    :class => GetGrantedAuthoritiesResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "getGrantedAuthoritiesResponse"),
    :schema_element => [
      ["out", "ArrayOfString"]
    ]
  )

  LiteralRegistry.register(
    :class => AddPrincipal,
    :schema_name => XSD::QName.new(NsSecurityServer, "addPrincipal"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAPPrincipal"],
      ["in2", "PasswordCredential"]
    ]
  )

  LiteralRegistry.register(
    :class => AddPrincipalResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "addPrincipalResponse"),
    :schema_element => [
      ["out", "SOAPPrincipal"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidPrincipalException,
    :schema_name => XSD::QName.new(NsSecurityServer, "InvalidPrincipalException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AddAttributeToPrincipal,
    :schema_name => XSD::QName.new(NsSecurityServer, "addAttributeToPrincipal"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"],
      ["in2", "SOAPAttribute"]
    ]
  )

  LiteralRegistry.register(
    :class => AddAttributeToPrincipalResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "addAttributeToPrincipalResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => InvalidatePrincipalToken,
    :schema_name => XSD::QName.new(NsSecurityServer, "invalidatePrincipalToken"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidatePrincipalTokenResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "invalidatePrincipalTokenResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => FindAllGroupNames,
    :schema_name => XSD::QName.new(NsSecurityServer, "findAllGroupNames"),
    :schema_element => [
      ["in0", "AuthenticatedToken"]
    ]
  )

  LiteralRegistry.register(
    :class => FindAllGroupNamesResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "findAllGroupNamesResponse"),
    :schema_element => [
      ["out", "ArrayOfString"]
    ]
  )

  LiteralRegistry.register(
    :class => FindRoleMemberships,
    :schema_name => XSD::QName.new(NsSecurityServer, "findRoleMemberships"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => FindRoleMembershipsResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "findRoleMembershipsResponse"),
    :schema_element => [
      ["out", "ArrayOfString"]
    ]
  )

  LiteralRegistry.register(
    :class => RemovePrincipal,
    :schema_name => XSD::QName.new(NsSecurityServer, "removePrincipal"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RemovePrincipalResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "removePrincipalResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => IsValidPrincipalToken,
    :schema_name => XSD::QName.new(NsSecurityServer, "isValidPrincipalToken"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"],
      ["in2", "ArrayOfValidationFactor"]
    ]
  )

  LiteralRegistry.register(
    :class => IsValidPrincipalTokenResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "isValidPrincipalTokenResponse"),
    :schema_element => [
      ["out", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => ApplicationAccessDeniedException,
    :schema_name => XSD::QName.new(NsSecurityServer, "ApplicationAccessDeniedException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AuthenticatePrincipalSimple,
    :schema_name => XSD::QName.new(NsSecurityServer, "authenticatePrincipalSimple"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"],
      ["in2", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AuthenticatePrincipalSimpleResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "authenticatePrincipalSimpleResponse"),
    :schema_element => [
      ["out", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidAuthenticationException,
    :schema_name => XSD::QName.new(NsSecurityServer, "InvalidAuthenticationException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => InactiveAccountException,
    :schema_name => XSD::QName.new(NsSecurityServer, "InactiveAccountException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => RemoveRole,
    :schema_name => XSD::QName.new(NsSecurityServer, "removeRole"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveRoleResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "removeRoleResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetCookieInfo,
    :schema_name => XSD::QName.new(NsSecurityServer, "getCookieInfo"),
    :schema_element => [
      ["in0", "AuthenticatedToken"]
    ]
  )

  LiteralRegistry.register(
    :class => GetCookieInfoResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "getCookieInfoResponse"),
    :schema_element => [
      ["out", "SOAPCookieInfo"]
    ]
  )

  LiteralRegistry.register(
    :class => UpdatePrincipalAttribute,
    :schema_name => XSD::QName.new(NsSecurityServer, "updatePrincipalAttribute"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"],
      ["in2", "SOAPAttribute"]
    ]
  )

  LiteralRegistry.register(
    :class => UpdatePrincipalAttributeResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "updatePrincipalAttributeResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => SearchGroups,
    :schema_name => XSD::QName.new(NsSecurityServer, "searchGroups"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "ArrayOfSearchRestriction"]
    ]
  )

  LiteralRegistry.register(
    :class => SearchGroupsResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "searchGroupsResponse"),
    :schema_element => [
      ["out", "ArrayOfSOAPGroup"]
    ]
  )

  LiteralRegistry.register(
    :class => GetCacheTime,
    :schema_name => XSD::QName.new(NsSecurityServer, "getCacheTime"),
    :schema_element => [
      ["in0", "AuthenticatedToken"]
    ]
  )

  LiteralRegistry.register(
    :class => GetCacheTimeResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "getCacheTimeResponse"),
    :schema_element => [
      ["out", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => IsRoleMember,
    :schema_name => XSD::QName.new(NsSecurityServer, "isRoleMember"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"],
      ["in2", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => IsRoleMemberResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "isRoleMemberResponse"),
    :schema_element => [
      ["out", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateGroup,
    :schema_name => XSD::QName.new(NsSecurityServer, "updateGroup"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"],
      ["in2", "SOAP::SOAPString"],
      ["in3", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateGroupResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "updateGroupResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => FindAllRoleNames,
    :schema_name => XSD::QName.new(NsSecurityServer, "findAllRoleNames"),
    :schema_element => [
      ["in0", "AuthenticatedToken"]
    ]
  )

  LiteralRegistry.register(
    :class => FindAllRoleNamesResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "findAllRoleNamesResponse"),
    :schema_element => [
      ["out", "ArrayOfString"]
    ]
  )

  LiteralRegistry.register(
    :class => FindRoleByName,
    :schema_name => XSD::QName.new(NsSecurityServer, "findRoleByName"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => FindRoleByNameResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "findRoleByNameResponse"),
    :schema_element => [
      ["out", "SOAPRole"]
    ]
  )

  LiteralRegistry.register(
    :class => IsCacheEnabled,
    :schema_name => XSD::QName.new(NsSecurityServer, "isCacheEnabled"),
    :schema_element => [
      ["in0", "AuthenticatedToken"]
    ]
  )

  LiteralRegistry.register(
    :class => IsCacheEnabledResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "isCacheEnabledResponse"),
    :schema_element => [
      ["out", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => FindGroupByName,
    :schema_name => XSD::QName.new(NsSecurityServer, "findGroupByName"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => FindGroupByNameResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "findGroupByNameResponse"),
    :schema_element => [
      ["out", "SOAPGroup"]
    ]
  )

  LiteralRegistry.register(
    :class => RemovePrincipalFromRole,
    :schema_name => XSD::QName.new(NsSecurityServer, "removePrincipalFromRole"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"],
      ["in2", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RemovePrincipalFromRoleResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "removePrincipalFromRoleResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AuthenticatePrincipal,
    :schema_name => XSD::QName.new(NsSecurityServer, "authenticatePrincipal"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "PrincipalAuthenticationContext"]
    ]
  )

  LiteralRegistry.register(
    :class => AuthenticatePrincipalResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "authenticatePrincipalResponse"),
    :schema_element => [
      ["out", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => FindGroupMemberships,
    :schema_name => XSD::QName.new(NsSecurityServer, "findGroupMemberships"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => FindGroupMembershipsResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "findGroupMembershipsResponse"),
    :schema_element => [
      ["out", "ArrayOfString"]
    ]
  )

  LiteralRegistry.register(
    :class => AddPrincipalToGroup,
    :schema_name => XSD::QName.new(NsSecurityServer, "addPrincipalToGroup"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"],
      ["in2", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AddPrincipalToGroupResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "addPrincipalToGroupResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => RemoveGroup,
    :schema_name => XSD::QName.new(NsSecurityServer, "removeGroup"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveGroupResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "removeGroupResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => RemoveAttributeFromPrincipal,
    :schema_name => XSD::QName.new(NsSecurityServer, "removeAttributeFromPrincipal"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"],
      ["in2", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveAttributeFromPrincipalResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "removeAttributeFromPrincipalResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => FindAllPrincipalNames,
    :schema_name => XSD::QName.new(NsSecurityServer, "findAllPrincipalNames"),
    :schema_element => [
      ["in0", "AuthenticatedToken"]
    ]
  )

  LiteralRegistry.register(
    :class => FindAllPrincipalNamesResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "findAllPrincipalNamesResponse"),
    :schema_element => [
      ["out", "ArrayOfString"]
    ]
  )

  LiteralRegistry.register(
    :class => AddRole,
    :schema_name => XSD::QName.new(NsSecurityServer, "addRole"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAPRole"]
    ]
  )

  LiteralRegistry.register(
    :class => AddRoleResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "addRoleResponse"),
    :schema_element => [
      ["out", "SOAPRole"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidRoleException,
    :schema_name => XSD::QName.new(NsSecurityServer, "InvalidRoleException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => CreatePrincipalToken,
    :schema_name => XSD::QName.new(NsSecurityServer, "createPrincipalToken"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"],
      ["in2", "ArrayOfValidationFactor"]
    ]
  )

  LiteralRegistry.register(
    :class => CreatePrincipalTokenResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "createPrincipalTokenResponse"),
    :schema_element => [
      ["out", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SearchRoles,
    :schema_name => XSD::QName.new(NsSecurityServer, "searchRoles"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "ArrayOfSearchRestriction"]
    ]
  )

  LiteralRegistry.register(
    :class => SearchRolesResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "searchRolesResponse"),
    :schema_element => [
      ["out", "ArrayOfSOAPRole"]
    ]
  )

  LiteralRegistry.register(
    :class => RemovePrincipalFromGroup,
    :schema_name => XSD::QName.new(NsSecurityServer, "removePrincipalFromGroup"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"],
      ["in2", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RemovePrincipalFromGroupResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "removePrincipalFromGroupResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => FindPrincipalByName,
    :schema_name => XSD::QName.new(NsSecurityServer, "findPrincipalByName"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => FindPrincipalByNameResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "findPrincipalByNameResponse"),
    :schema_element => [
      ["out", "SOAPPrincipal"]
    ]
  )

  LiteralRegistry.register(
    :class => ResetPrincipalCredential,
    :schema_name => XSD::QName.new(NsSecurityServer, "resetPrincipalCredential"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ResetPrincipalCredentialResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "resetPrincipalCredentialResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => InvalidEmailAddressException,
    :schema_name => XSD::QName.new(NsSecurityServer, "InvalidEmailAddressException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => IsGroupMember,
    :schema_name => XSD::QName.new(NsSecurityServer, "isGroupMember"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"],
      ["in2", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => IsGroupMemberResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "isGroupMemberResponse"),
    :schema_element => [
      ["out", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SearchPrincipals,
    :schema_name => XSD::QName.new(NsSecurityServer, "searchPrincipals"),
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "ArrayOfSearchRestriction"]
    ]
  )

  LiteralRegistry.register(
    :class => SearchPrincipalsResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "searchPrincipalsResponse"),
    :schema_element => [
      ["out", "ArrayOfSOAPPrincipal"]
    ]
  )

  LiteralRegistry.register(
    :class => GetDomain,
    :schema_name => XSD::QName.new(NsSecurityServer, "getDomain"),
    :schema_element => [
      ["in0", "AuthenticatedToken"]
    ]
  )

  LiteralRegistry.register(
    :class => GetDomainResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "getDomainResponse"),
    :schema_element => [
      ["out", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AuthenticateApplication,
    :schema_name => XSD::QName.new(NsSecurityServer, "authenticateApplication"),
    :schema_element => [
      ["in0", "ApplicationAuthenticationContext"]
    ]
  )

  LiteralRegistry.register(
    :class => AuthenticateApplicationResponse,
    :schema_name => XSD::QName.new(NsSecurityServer, "authenticateApplicationResponse"),
    :schema_element => [
      ["out", "AuthenticatedToken"]
    ]
  )
end
