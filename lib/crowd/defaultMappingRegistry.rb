require File.join(File.dirname(__FILE__), 'default.rb')
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new

  EncodedRegistry.register(
    :class => AuthenticatedToken,
    :schema_ns => "http://authentication.integration.crowd.atlassian.com",
    :schema_type => "AuthenticatedToken",
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["token", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ApplicationAuthenticationContext,
    :schema_ns => "http://authentication.integration.crowd.atlassian.com",
    :schema_type => "ApplicationAuthenticationContext",
    :schema_element => [
      ["credential", "PasswordCredential", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["validationFactors", "ArrayOfValidationFactor", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PasswordCredential,
    :schema_ns => "http://authentication.integration.crowd.atlassian.com",
    :schema_type => "PasswordCredential",
    :schema_element => [
      ["credential", "SOAP::SOAPString", [0, 1]],
      ["encryptedCrednetial", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.set(
    ArrayOfValidationFactor,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://authentication.integration.crowd.atlassian.com", "ValidationFactor") }
  )

  EncodedRegistry.register(
    :class => ValidationFactor,
    :schema_ns => "http://authentication.integration.crowd.atlassian.com",
    :schema_type => "ValidationFactor",
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PrincipalAuthenticationContext,
    :schema_ns => "http://authentication.integration.crowd.atlassian.com",
    :schema_type => "PrincipalAuthenticationContext",
    :schema_element => [
      ["application", "SOAP::SOAPString", [0, 1]],
      ["credential", "PasswordCredential", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["validationFactors", "ArrayOfValidationFactor", [0, 1]]
    ]
  )

  EncodedRegistry.set(
    ArrayOfString,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.register(
    :class => SOAPPrincipal,
    :schema_ns => "http://soap.integration.crowd.atlassian.com",
    :schema_type => "SOAPPrincipal",
    :schema_element => [
      ["iD", ["SOAP::SOAPLong", XSD::QName.new("http://soap.integration.crowd.atlassian.com", "ID")], [0, 1]],
      ["active", "SOAP::SOAPBoolean", [0, 1]],
      ["attributes", "ArrayOfSOAPAttribute", [0, 1]],
      ["conception", "SOAP::SOAPDateTime", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["directoryID", "SOAP::SOAPLong", [0, 1]],
      ["lastModified", "SOAP::SOAPDateTime", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.set(
    ArrayOfSOAPAttribute,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://soap.integration.crowd.atlassian.com", "SOAPAttribute") }
  )

  EncodedRegistry.register(
    :class => SOAPAttribute,
    :schema_ns => "http://soap.integration.crowd.atlassian.com",
    :schema_type => "SOAPAttribute",
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["values", "ArrayOfString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SOAPRole,
    :schema_ns => "http://soap.integration.crowd.atlassian.com",
    :schema_type => "SOAPRole",
    :schema_element => [
      ["iD", ["SOAP::SOAPLong", XSD::QName.new("http://soap.integration.crowd.atlassian.com", "ID")], [0, 1]],
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

  EncodedRegistry.set(
    ArrayOfSearchRestriction,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://soap.integration.crowd.atlassian.com", "SearchRestriction") }
  )

  EncodedRegistry.register(
    :class => SearchRestriction,
    :schema_ns => "http://soap.integration.crowd.atlassian.com",
    :schema_type => "SearchRestriction",
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.set(
    ArrayOfSOAPGroup,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://soap.integration.crowd.atlassian.com", "SOAPGroup") }
  )

  EncodedRegistry.register(
    :class => SOAPGroup,
    :schema_ns => "http://soap.integration.crowd.atlassian.com",
    :schema_type => "SOAPGroup",
    :schema_element => [
      ["iD", ["SOAP::SOAPLong", XSD::QName.new("http://soap.integration.crowd.atlassian.com", "ID")], [0, 1]],
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

  EncodedRegistry.set(
    ArrayOfSOAPPrincipal,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://soap.integration.crowd.atlassian.com", "SOAPPrincipal") }
  )

  EncodedRegistry.set(
    ArrayOfSOAPRole,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://soap.integration.crowd.atlassian.com", "SOAPRole") }
  )

  EncodedRegistry.register(
    :class => InvalidAuthorizationTokenException,
    :schema_ns => "http://exception.integration.crowd.atlassian.com",
    :schema_type => "InvalidAuthorizationTokenException",
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ObjectNotFoundException,
    :schema_ns => "http://exception.integration.crowd.atlassian.com",
    :schema_type => "ObjectNotFoundException",
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidAuthenticationException,
    :schema_ns => "http://exception.integration.crowd.atlassian.com",
    :schema_type => "InvalidAuthenticationException",
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DirectoryPermissionException,
    :schema_ns => "http://exception.integration.crowd.atlassian.com",
    :schema_type => "DirectoryPermissionException",
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidRoleException,
    :schema_ns => "http://exception.integration.crowd.atlassian.com",
    :schema_type => "InvalidRoleException",
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidTokenException,
    :schema_ns => "http://exception.integration.crowd.atlassian.com",
    :schema_type => "InvalidTokenException",
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidGroupException,
    :schema_ns => "http://exception.integration.crowd.atlassian.com",
    :schema_type => "InvalidGroupException",
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidCredentialException,
    :schema_ns => "http://exception.integration.crowd.atlassian.com",
    :schema_type => "InvalidCredentialException",
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidPrincipalException,
    :schema_ns => "http://exception.integration.crowd.atlassian.com",
    :schema_type => "InvalidPrincipalException",
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => InactiveAccountException,
    :schema_ns => "http://exception.integration.crowd.atlassian.com",
    :schema_type => "InactiveAccountException",
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Throwable,
    :schema_ns => "http://lang.java",
    :schema_type => "Throwable",
    :schema_element => []
  )

  EncodedRegistry.set(
    ArrayOfThrowable,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://lang.java", "Throwable") }
  )

  EncodedRegistry.register(
    :class => RemoteException,
    :schema_ns => "http://rmi.java",
    :schema_type => "RemoteException",
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["message", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AuthenticatedToken,
    :schema_ns => "http://authentication.integration.crowd.atlassian.com",
    :schema_type => "AuthenticatedToken",
    :schema_qualified => false,
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["token", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApplicationAuthenticationContext,
    :schema_ns => "http://authentication.integration.crowd.atlassian.com",
    :schema_type => "ApplicationAuthenticationContext",
    :schema_qualified => false,
    :schema_element => [
      ["credential", "PasswordCredential", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["validationFactors", "ArrayOfValidationFactor", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PasswordCredential,
    :schema_ns => "http://authentication.integration.crowd.atlassian.com",
    :schema_type => "PasswordCredential",
    :schema_qualified => false,
    :schema_element => [
      ["credential", "SOAP::SOAPString", [0, 1]],
      ["encryptedCrednetial", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfValidationFactor,
    :schema_ns => "http://authentication.integration.crowd.atlassian.com",
    :schema_type => "ArrayOfValidationFactor",
    :schema_element => [
      ["ValidationFactor", ["ValidationFactor[]", XSD::QName.new("http://authentication.integration.crowd.atlassian.com", "ValidationFactor")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ValidationFactor,
    :schema_ns => "http://authentication.integration.crowd.atlassian.com",
    :schema_type => "ValidationFactor",
    :schema_qualified => false,
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PrincipalAuthenticationContext,
    :schema_ns => "http://authentication.integration.crowd.atlassian.com",
    :schema_type => "PrincipalAuthenticationContext",
    :schema_qualified => false,
    :schema_element => [
      ["application", "SOAP::SOAPString", [0, 1]],
      ["credential", "PasswordCredential", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["validationFactors", "ArrayOfValidationFactor", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfString,
    :schema_ns => "urn:SecurityServer",
    :schema_type => "ArrayOfString",
    :schema_element => [
      ["string", ["SOAP::SOAPString[]", XSD::QName.new("urn:SecurityServer", "string")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SOAPPrincipal,
    :schema_ns => "http://soap.integration.crowd.atlassian.com",
    :schema_type => "SOAPPrincipal",
    :schema_qualified => false,
    :schema_element => [
      ["iD", ["SOAP::SOAPLong", XSD::QName.new("http://soap.integration.crowd.atlassian.com", "ID")], [0, 1]],
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
    :class => ArrayOfSOAPAttribute,
    :schema_ns => "http://soap.integration.crowd.atlassian.com",
    :schema_type => "ArrayOfSOAPAttribute",
    :schema_element => [
      ["SOAPAttribute", ["SOAPAttribute[]", XSD::QName.new("http://soap.integration.crowd.atlassian.com", "SOAPAttribute")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SOAPAttribute,
    :schema_ns => "http://soap.integration.crowd.atlassian.com",
    :schema_type => "SOAPAttribute",
    :schema_qualified => false,
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["values", "ArrayOfString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SOAPRole,
    :schema_ns => "http://soap.integration.crowd.atlassian.com",
    :schema_type => "SOAPRole",
    :schema_qualified => false,
    :schema_element => [
      ["iD", ["SOAP::SOAPLong", XSD::QName.new("http://soap.integration.crowd.atlassian.com", "ID")], [0, 1]],
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
    :class => ArrayOfSearchRestriction,
    :schema_ns => "http://soap.integration.crowd.atlassian.com",
    :schema_type => "ArrayOfSearchRestriction",
    :schema_element => [
      ["SearchRestriction", ["SearchRestriction[]", XSD::QName.new("http://soap.integration.crowd.atlassian.com", "SearchRestriction")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchRestriction,
    :schema_ns => "http://soap.integration.crowd.atlassian.com",
    :schema_type => "SearchRestriction",
    :schema_qualified => false,
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSOAPGroup,
    :schema_ns => "http://soap.integration.crowd.atlassian.com",
    :schema_type => "ArrayOfSOAPGroup",
    :schema_element => [
      ["SOAPGroup", ["SOAPGroup[]", XSD::QName.new("http://soap.integration.crowd.atlassian.com", "SOAPGroup")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SOAPGroup,
    :schema_ns => "http://soap.integration.crowd.atlassian.com",
    :schema_type => "SOAPGroup",
    :schema_qualified => false,
    :schema_element => [
      ["iD", ["SOAP::SOAPLong", XSD::QName.new("http://soap.integration.crowd.atlassian.com", "ID")], [0, 1]],
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
    :class => ArrayOfSOAPPrincipal,
    :schema_ns => "http://soap.integration.crowd.atlassian.com",
    :schema_type => "ArrayOfSOAPPrincipal",
    :schema_element => [
      ["SOAPPrincipal", ["SOAPPrincipal[]", XSD::QName.new("http://soap.integration.crowd.atlassian.com", "SOAPPrincipal")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSOAPRole,
    :schema_ns => "http://soap.integration.crowd.atlassian.com",
    :schema_type => "ArrayOfSOAPRole",
    :schema_element => [
      ["SOAPRole", ["SOAPRole[]", XSD::QName.new("http://soap.integration.crowd.atlassian.com", "SOAPRole")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidAuthorizationTokenException,
    :schema_ns => "http://exception.integration.crowd.atlassian.com",
    :schema_type => "InvalidAuthorizationTokenException",
    :schema_qualified => false,
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ObjectNotFoundException,
    :schema_ns => "http://exception.integration.crowd.atlassian.com",
    :schema_type => "ObjectNotFoundException",
    :schema_qualified => false,
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidAuthenticationException,
    :schema_ns => "http://exception.integration.crowd.atlassian.com",
    :schema_type => "InvalidAuthenticationException",
    :schema_qualified => false,
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DirectoryPermissionException,
    :schema_ns => "http://exception.integration.crowd.atlassian.com",
    :schema_type => "DirectoryPermissionException",
    :schema_qualified => false,
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidRoleException,
    :schema_ns => "http://exception.integration.crowd.atlassian.com",
    :schema_type => "InvalidRoleException",
    :schema_qualified => false,
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidTokenException,
    :schema_ns => "http://exception.integration.crowd.atlassian.com",
    :schema_type => "InvalidTokenException",
    :schema_qualified => false,
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidGroupException,
    :schema_ns => "http://exception.integration.crowd.atlassian.com",
    :schema_type => "InvalidGroupException",
    :schema_qualified => false,
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidCredentialException,
    :schema_ns => "http://exception.integration.crowd.atlassian.com",
    :schema_type => "InvalidCredentialException",
    :schema_qualified => false,
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidPrincipalException,
    :schema_ns => "http://exception.integration.crowd.atlassian.com",
    :schema_type => "InvalidPrincipalException",
    :schema_qualified => false,
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => InactiveAccountException,
    :schema_ns => "http://exception.integration.crowd.atlassian.com",
    :schema_type => "InactiveAccountException",
    :schema_qualified => false,
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Throwable,
    :schema_ns => "http://lang.java",
    :schema_type => "Throwable",
    :schema_qualified => false,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ArrayOfThrowable,
    :schema_ns => "http://lang.java",
    :schema_type => "ArrayOfThrowable",
    :schema_element => [
      ["Throwable", ["Throwable[]", XSD::QName.new("http://lang.java", "Throwable")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteException,
    :schema_ns => "http://rmi.java",
    :schema_type => "RemoteException",
    :schema_qualified => false,
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["message", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindPrincipalByName,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "findPrincipalByName",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => FindPrincipalByNameResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "findPrincipalByNameResponse",
    :schema_qualified => true,
    :schema_element => [
      ["out", "SOAPPrincipal"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidAuthorizationTokenException,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "InvalidAuthorizationTokenException",
    :schema_qualified => true,
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteException,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "RemoteException",
    :schema_qualified => true,
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["message", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ObjectNotFoundException,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "ObjectNotFoundException",
    :schema_qualified => true,
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AuthenticateApplication,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "authenticateApplication",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "ApplicationAuthenticationContext"]
    ]
  )

  LiteralRegistry.register(
    :class => AuthenticateApplicationResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "authenticateApplicationResponse",
    :schema_qualified => true,
    :schema_element => [
      ["out", "AuthenticatedToken"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidAuthenticationException,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "InvalidAuthenticationException",
    :schema_qualified => true,
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddPrincipalToGroup,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "addPrincipalToGroup",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"],
      ["in2", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AddPrincipalToGroupResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "addPrincipalToGroupResponse",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => DirectoryPermissionException,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "DirectoryPermissionException",
    :schema_qualified => true,
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindRoleByName,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "findRoleByName",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => FindRoleByNameResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "findRoleByNameResponse",
    :schema_qualified => true,
    :schema_element => [
      ["out", "SOAPRole"]
    ]
  )

  LiteralRegistry.register(
    :class => AddRole,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "addRole",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAPRole"]
    ]
  )

  LiteralRegistry.register(
    :class => AddRoleResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "addRoleResponse",
    :schema_qualified => true,
    :schema_element => [
      ["out", "SOAPRole"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidRoleException,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "InvalidRoleException",
    :schema_qualified => true,
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindPrincipalByToken,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "findPrincipalByToken",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => FindPrincipalByTokenResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "findPrincipalByTokenResponse",
    :schema_qualified => true,
    :schema_element => [
      ["out", "SOAPPrincipal"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidTokenException,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "InvalidTokenException",
    :schema_qualified => true,
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => IsGroupMember,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "isGroupMember",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"],
      ["in2", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => IsGroupMemberResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "isGroupMemberResponse",
    :schema_qualified => true,
    :schema_element => [
      ["out", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SearchGroups,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "searchGroups",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "ArrayOfSearchRestriction"]
    ]
  )

  LiteralRegistry.register(
    :class => SearchGroupsResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "searchGroupsResponse",
    :schema_qualified => true,
    :schema_element => [
      ["out", "ArrayOfSOAPGroup"]
    ]
  )

  LiteralRegistry.register(
    :class => GetDomain,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "getDomain",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"]
    ]
  )

  LiteralRegistry.register(
    :class => GetDomainResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "getDomainResponse",
    :schema_qualified => true,
    :schema_element => [
      ["out", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveAttributeFromPrincipal,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "removeAttributeFromPrincipal",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"],
      ["in2", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveAttributeFromPrincipalResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "removeAttributeFromPrincipalResponse",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => IsRoleMember,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "isRoleMember",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"],
      ["in2", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => IsRoleMemberResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "isRoleMemberResponse",
    :schema_qualified => true,
    :schema_element => [
      ["out", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveRole,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "removeRole",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveRoleResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "removeRoleResponse",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => RemovePrincipalFromRole,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "removePrincipalFromRole",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"],
      ["in2", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RemovePrincipalFromRoleResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "removePrincipalFromRoleResponse",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AddGroup,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "addGroup",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAPGroup"]
    ]
  )

  LiteralRegistry.register(
    :class => AddGroupResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "addGroupResponse",
    :schema_qualified => true,
    :schema_element => [
      ["out", "SOAPGroup"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidGroupException,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "InvalidGroupException",
    :schema_qualified => true,
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindRoleMemberships,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "findRoleMemberships",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => FindRoleMembershipsResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "findRoleMembershipsResponse",
    :schema_qualified => true,
    :schema_element => [
      ["out", "ArrayOfString"]
    ]
  )

  LiteralRegistry.register(
    :class => GetCacheTime,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "getCacheTime",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"]
    ]
  )

  LiteralRegistry.register(
    :class => GetCacheTimeResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "getCacheTimeResponse",
    :schema_qualified => true,
    :schema_element => [
      ["out", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => RemovePrincipal,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "removePrincipal",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RemovePrincipalResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "removePrincipalResponse",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ResetPrincipalCredential,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "resetPrincipalCredential",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ResetPrincipalCredentialResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "resetPrincipalCredentialResponse",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => InvalidCredentialException,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "InvalidCredentialException",
    :schema_qualified => true,
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FindAllRoleNames,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "findAllRoleNames",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"]
    ]
  )

  LiteralRegistry.register(
    :class => FindAllRoleNamesResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "findAllRoleNamesResponse",
    :schema_qualified => true,
    :schema_element => [
      ["out", "ArrayOfString"]
    ]
  )

  LiteralRegistry.register(
    :class => AddPrincipalToRole,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "addPrincipalToRole",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"],
      ["in2", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AddPrincipalToRoleResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "addPrincipalToRoleResponse",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => InvalidatePrincipalToken,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "invalidatePrincipalToken",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidatePrincipalTokenResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "invalidatePrincipalTokenResponse",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => SearchPrincipals,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "searchPrincipals",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "ArrayOfSearchRestriction"]
    ]
  )

  LiteralRegistry.register(
    :class => SearchPrincipalsResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "searchPrincipalsResponse",
    :schema_qualified => true,
    :schema_element => [
      ["out", "ArrayOfSOAPPrincipal"]
    ]
  )

  LiteralRegistry.register(
    :class => FindGroupByName,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "findGroupByName",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => FindGroupByNameResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "findGroupByNameResponse",
    :schema_qualified => true,
    :schema_element => [
      ["out", "SOAPGroup"]
    ]
  )

  LiteralRegistry.register(
    :class => FindAllGroupNames,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "findAllGroupNames",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"]
    ]
  )

  LiteralRegistry.register(
    :class => FindAllGroupNamesResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "findAllGroupNamesResponse",
    :schema_qualified => true,
    :schema_element => [
      ["out", "ArrayOfString"]
    ]
  )

  LiteralRegistry.register(
    :class => AddAttributeToPrincipal,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "addAttributeToPrincipal",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"],
      ["in2", "SOAPAttribute"]
    ]
  )

  LiteralRegistry.register(
    :class => AddAttributeToPrincipalResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "addAttributeToPrincipalResponse",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => RemovePrincipalFromGroup,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "removePrincipalFromGroup",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"],
      ["in2", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RemovePrincipalFromGroupResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "removePrincipalFromGroupResponse",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => FindGroupMemberships,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "findGroupMemberships",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => FindGroupMembershipsResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "findGroupMembershipsResponse",
    :schema_qualified => true,
    :schema_element => [
      ["out", "ArrayOfString"]
    ]
  )

  LiteralRegistry.register(
    :class => UpdatePrincipalCredential,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "updatePrincipalCredential",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"],
      ["in2", "PasswordCredential"]
    ]
  )

  LiteralRegistry.register(
    :class => UpdatePrincipalCredentialResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "updatePrincipalCredentialResponse",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => UpdatePrincipalAttribute,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "updatePrincipalAttribute",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"],
      ["in2", "SOAPAttribute"]
    ]
  )

  LiteralRegistry.register(
    :class => UpdatePrincipalAttributeResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "updatePrincipalAttributeResponse",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => FindAllPrincipalNames,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "findAllPrincipalNames",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"]
    ]
  )

  LiteralRegistry.register(
    :class => FindAllPrincipalNamesResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "findAllPrincipalNamesResponse",
    :schema_qualified => true,
    :schema_element => [
      ["out", "ArrayOfString"]
    ]
  )

  LiteralRegistry.register(
    :class => SearchRoles,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "searchRoles",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "ArrayOfSearchRestriction"]
    ]
  )

  LiteralRegistry.register(
    :class => SearchRolesResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "searchRolesResponse",
    :schema_qualified => true,
    :schema_element => [
      ["out", "ArrayOfSOAPRole"]
    ]
  )

  LiteralRegistry.register(
    :class => IsCacheEnabled,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "isCacheEnabled",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"]
    ]
  )

  LiteralRegistry.register(
    :class => IsCacheEnabledResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "isCacheEnabledResponse",
    :schema_qualified => true,
    :schema_element => [
      ["out", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => AddPrincipal,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "addPrincipal",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAPPrincipal"],
      ["in2", "PasswordCredential"]
    ]
  )

  LiteralRegistry.register(
    :class => AddPrincipalResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "addPrincipalResponse",
    :schema_qualified => true,
    :schema_element => [
      ["out", "SOAPPrincipal"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidPrincipalException,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "InvalidPrincipalException",
    :schema_qualified => true,
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => IsValidPrincipalToken,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "isValidPrincipalToken",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"],
      ["in2", "ArrayOfValidationFactor"]
    ]
  )

  LiteralRegistry.register(
    :class => IsValidPrincipalTokenResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "isValidPrincipalTokenResponse",
    :schema_qualified => true,
    :schema_element => [
      ["out", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveGroup,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "removeGroup",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveGroupResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "removeGroupResponse",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AuthenticatePrincipal,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "authenticatePrincipal",
    :schema_qualified => true,
    :schema_element => [
      ["in0", "AuthenticatedToken"],
      ["in1", "PrincipalAuthenticationContext"]
    ]
  )

  LiteralRegistry.register(
    :class => AuthenticatePrincipalResponse,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "authenticatePrincipalResponse",
    :schema_qualified => true,
    :schema_element => [
      ["out", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InactiveAccountException,
    :schema_ns => "urn:SecurityServer",
    :schema_name => "InactiveAccountException",
    :schema_qualified => true,
    :schema_element => [
      ["cause", "Throwable", [0, 1]],
      ["messages", "ArrayOfString", [0, 1]],
      ["throwableCount", "SOAP::SOAPInt", [0, 1]],
      ["throwables", "ArrayOfThrowable", [0, 1]]
    ]
  )
end
