require 'xsd/qname'

# {http://authentication.integration.crowd.atlassian.com}AuthenticatedToken
#   name - SOAP::SOAPString
#   token - SOAP::SOAPString
class AuthenticatedToken
  attr_accessor :name
  attr_accessor :token

  def initialize(name = nil, token = nil)
    @name = name
    @token = token
  end
end

# {http://authentication.integration.crowd.atlassian.com}PasswordCredential
#   credential - SOAP::SOAPString
#   encryptedCredential - SOAP::SOAPBoolean
class PasswordCredential
  attr_accessor :credential
  attr_accessor :encryptedCredential

  def initialize(credential = nil, encryptedCredential = nil)
    @credential = credential
    @encryptedCredential = encryptedCredential
  end
end

# {http://authentication.integration.crowd.atlassian.com}ArrayOfValidationFactor
class ArrayOfValidationFactor < ::Array
end

# {http://authentication.integration.crowd.atlassian.com}ValidationFactor
#   name - SOAP::SOAPString
#   value - SOAP::SOAPString
class ValidationFactor
  attr_accessor :name
  attr_accessor :value

  def initialize(name = nil, value = nil)
    @name = name
    @value = value
  end
end

# {http://authentication.integration.crowd.atlassian.com}PrincipalAuthenticationContext
#   application - SOAP::SOAPString
#   credential - PasswordCredential
#   name - SOAP::SOAPString
#   validationFactors - ArrayOfValidationFactor
class PrincipalAuthenticationContext
  attr_accessor :application
  attr_accessor :credential
  attr_accessor :name
  attr_accessor :validationFactors

  def initialize(application = nil, credential = nil, name = nil, validationFactors = nil)
    @application = application
    @credential = credential
    @name = name
    @validationFactors = validationFactors
  end
end

# {http://authentication.integration.crowd.atlassian.com}ApplicationAuthenticationContext
#   credential - PasswordCredential
#   name - SOAP::SOAPString
#   validationFactors - ArrayOfValidationFactor
class ApplicationAuthenticationContext
  attr_accessor :credential
  attr_accessor :name
  attr_accessor :validationFactors

  def initialize(credential = nil, name = nil, validationFactors = nil)
    @credential = credential
    @name = name
    @validationFactors = validationFactors
  end
end

# {urn:SecurityServer}ArrayOfString
class ArrayOfString < ::Array
end

# {http://soap.integration.crowd.atlassian.com}ArrayOfSOAPNestableGroup
class ArrayOfSOAPNestableGroup < ::Array
end

# {http://soap.integration.crowd.atlassian.com}SOAPNestableGroup
#   iD - SOAP::SOAPLong
#   active - SOAP::SOAPBoolean
#   attributes - ArrayOfSOAPAttribute
#   conception - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   directoryID - SOAP::SOAPLong
#   groupMembers - ArrayOfString
#   lastModified - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
class SOAPNestableGroup
  attr_accessor :iD
  attr_accessor :active
  attr_accessor :attributes
  attr_accessor :conception
  attr_accessor :description
  attr_accessor :directoryID
  attr_accessor :groupMembers
  attr_accessor :lastModified
  attr_accessor :name

  def initialize(iD = nil, active = nil, attributes = nil, conception = nil, description = nil, directoryID = nil, groupMembers = nil, lastModified = nil, name = nil)
    @iD = iD
    @active = active
    @attributes = attributes
    @conception = conception
    @description = description
    @directoryID = directoryID
    @groupMembers = groupMembers
    @lastModified = lastModified
    @name = name
  end
end

# {http://soap.integration.crowd.atlassian.com}ArrayOfSOAPAttribute
class ArrayOfSOAPAttribute < ::Array
end

# {http://soap.integration.crowd.atlassian.com}SOAPAttribute
#   name - SOAP::SOAPString
#   values - ArrayOfString
class SOAPAttribute
  attr_accessor :name
  attr_accessor :values

  def initialize(name = nil, values = nil)
    @name = name
    @values = values
  end
end

# {http://soap.integration.crowd.atlassian.com}SOAPGroup
#   iD - SOAP::SOAPLong
#   active - SOAP::SOAPBoolean
#   attributes - ArrayOfSOAPAttribute
#   conception - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   directoryID - SOAP::SOAPLong
#   lastModified - SOAP::SOAPDateTime
#   members - ArrayOfString
#   name - SOAP::SOAPString
class SOAPGroup
  attr_accessor :iD
  attr_accessor :active
  attr_accessor :attributes
  attr_accessor :conception
  attr_accessor :description
  attr_accessor :directoryID
  attr_accessor :lastModified
  attr_accessor :members
  attr_accessor :name

  def initialize(iD = nil, active = nil, attributes = nil, conception = nil, description = nil, directoryID = nil, lastModified = nil, members = nil, name = nil)
    @iD = iD
    @active = active
    @attributes = attributes
    @conception = conception
    @description = description
    @directoryID = directoryID
    @lastModified = lastModified
    @members = members
    @name = name
  end
end

# {http://soap.integration.crowd.atlassian.com}SOAPPrincipal
#   iD - SOAP::SOAPLong
#   active - SOAP::SOAPBoolean
#   attributes - ArrayOfSOAPAttribute
#   conception - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   directoryID - SOAP::SOAPLong
#   lastModified - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
class SOAPPrincipal
  attr_accessor :iD
  attr_accessor :active
  attr_accessor :attributes
  attr_accessor :conception
  attr_accessor :description
  attr_accessor :directoryID
  attr_accessor :lastModified
  attr_accessor :name

  def initialize(iD = nil, active = nil, attributes = nil, conception = nil, description = nil, directoryID = nil, lastModified = nil, name = nil)
    @iD = iD
    @active = active
    @attributes = attributes
    @conception = conception
    @description = description
    @directoryID = directoryID
    @lastModified = lastModified
    @name = name
  end
end

# {http://soap.integration.crowd.atlassian.com}SOAPCookieInfo
#   domain - SOAP::SOAPString
#   secure - SOAP::SOAPBoolean
class SOAPCookieInfo
  attr_accessor :domain
  attr_accessor :secure

  def initialize(domain = nil, secure = nil)
    @domain = domain
    @secure = secure
  end
end

# {http://soap.integration.crowd.atlassian.com}ArrayOfSearchRestriction
class ArrayOfSearchRestriction < ::Array
end

# {http://soap.integration.crowd.atlassian.com}SearchRestriction
#   name - SOAP::SOAPString
#   value - SOAP::SOAPString
class SearchRestriction
  attr_accessor :name
  attr_accessor :value

  def initialize(name = nil, value = nil)
    @name = name
    @value = value
  end
end

# {http://soap.integration.crowd.atlassian.com}ArrayOfSOAPGroup
class ArrayOfSOAPGroup < ::Array
end

# {http://soap.integration.crowd.atlassian.com}SOAPRole
#   iD - SOAP::SOAPLong
#   active - SOAP::SOAPBoolean
#   attributes - ArrayOfSOAPAttribute
#   conception - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   directoryID - SOAP::SOAPLong
#   lastModified - SOAP::SOAPDateTime
#   members - ArrayOfString
#   name - SOAP::SOAPString
class SOAPRole
  attr_accessor :iD
  attr_accessor :active
  attr_accessor :attributes
  attr_accessor :conception
  attr_accessor :description
  attr_accessor :directoryID
  attr_accessor :lastModified
  attr_accessor :members
  attr_accessor :name

  def initialize(iD = nil, active = nil, attributes = nil, conception = nil, description = nil, directoryID = nil, lastModified = nil, members = nil, name = nil)
    @iD = iD
    @active = active
    @attributes = attributes
    @conception = conception
    @description = description
    @directoryID = directoryID
    @lastModified = lastModified
    @members = members
    @name = name
  end
end

# {http://soap.integration.crowd.atlassian.com}ArrayOfSOAPRole
class ArrayOfSOAPRole < ::Array
end

# {http://soap.integration.crowd.atlassian.com}ArrayOfSOAPPrincipal
class ArrayOfSOAPPrincipal < ::Array
end

# {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
class InvalidAuthorizationTokenException
  def initialize
  end
end

# {http://exception.integration.crowd.atlassian.com}InvalidGroupException
class InvalidGroupException
  def initialize
  end
end

# {http://exception.integration.crowd.atlassian.com}ApplicationPermissionException
class ApplicationPermissionException
  def initialize
  end
end

# {http://exception.integration.crowd.atlassian.com}ObjectNotFoundException
class ObjectNotFoundException
  def initialize
  end
end

# {http://exception.integration.crowd.atlassian.com}InvalidTokenException
class InvalidTokenException
  def initialize
  end
end

# {http://exception.integration.crowd.atlassian.com}InvalidCredentialException
class InvalidCredentialException
  def initialize
  end
end

# {http://exception.integration.crowd.atlassian.com}InvalidPrincipalException
class InvalidPrincipalException
  def initialize
  end
end

# {http://exception.integration.crowd.atlassian.com}ApplicationAccessDeniedException
class ApplicationAccessDeniedException
  def initialize
  end
end

# {http://exception.integration.crowd.atlassian.com}InvalidAuthenticationException
class InvalidAuthenticationException
  def initialize
  end
end

# {http://exception.integration.crowd.atlassian.com}InactiveAccountException
class InactiveAccountException
  def initialize
  end
end

# {http://exception.integration.crowd.atlassian.com}InvalidRoleException
class InvalidRoleException
  def initialize
  end
end

# {http://exception.integration.crowd.atlassian.com}InvalidEmailAddressException
class InvalidEmailAddressException
  def initialize
  end
end

# {http://rmi.java}RemoteException
#   cause - Throwable
#   message - SOAP::SOAPString
class RemoteException
  attr_accessor :cause
  attr_accessor :message

  def initialize(cause = nil, message = nil)
    @cause = cause
    @message = message
  end
end

# {http://lang.java}Throwable
class Throwable
  def initialize
  end
end

# {urn:SecurityServer}findAllGroupRelationships
#   in0 - AuthenticatedToken
class FindAllGroupRelationships
  attr_accessor :in0

  def initialize(in0 = nil)
    @in0 = in0
  end
end

# {urn:SecurityServer}findAllGroupRelationshipsResponse
#   out - ArrayOfSOAPNestableGroup
class FindAllGroupRelationshipsResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}addGroup
#   in0 - AuthenticatedToken
#   in1 - SOAPGroup
class AddGroup
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}addGroupResponse
#   out - SOAPGroup
class AddGroupResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}addPrincipalToRole
#   in0 - AuthenticatedToken
#   in1 - SOAP::SOAPString
#   in2 - SOAP::SOAPString
class AddPrincipalToRole
  attr_accessor :in0
  attr_accessor :in1
  attr_accessor :in2

  def initialize(in0 = nil, in1 = nil, in2 = nil)
    @in0 = in0
    @in1 = in1
    @in2 = in2
  end
end

# {urn:SecurityServer}addPrincipalToRoleResponse
class AddPrincipalToRoleResponse
  def initialize
  end
end

# {urn:SecurityServer}findPrincipalByToken
#   in0 - AuthenticatedToken
#   in1 - SOAP::SOAPString
class FindPrincipalByToken
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}findPrincipalByTokenResponse
#   out - SOAPPrincipal
class FindPrincipalByTokenResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}updatePrincipalCredential
#   in0 - AuthenticatedToken
#   in1 - SOAP::SOAPString
#   in2 - PasswordCredential
class UpdatePrincipalCredential
  attr_accessor :in0
  attr_accessor :in1
  attr_accessor :in2

  def initialize(in0 = nil, in1 = nil, in2 = nil)
    @in0 = in0
    @in1 = in1
    @in2 = in2
  end
end

# {urn:SecurityServer}updatePrincipalCredentialResponse
class UpdatePrincipalCredentialResponse
  def initialize
  end
end

# {urn:SecurityServer}getGrantedAuthorities
#   in0 - AuthenticatedToken
class GetGrantedAuthorities
  attr_accessor :in0

  def initialize(in0 = nil)
    @in0 = in0
  end
end

# {urn:SecurityServer}getGrantedAuthoritiesResponse
#   out - ArrayOfString
class GetGrantedAuthoritiesResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}addPrincipal
#   in0 - AuthenticatedToken
#   in1 - SOAPPrincipal
#   in2 - PasswordCredential
class AddPrincipal
  attr_accessor :in0
  attr_accessor :in1
  attr_accessor :in2

  def initialize(in0 = nil, in1 = nil, in2 = nil)
    @in0 = in0
    @in1 = in1
    @in2 = in2
  end
end

# {urn:SecurityServer}addPrincipalResponse
#   out - SOAPPrincipal
class AddPrincipalResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}addAttributeToPrincipal
#   in0 - AuthenticatedToken
#   in1 - SOAP::SOAPString
#   in2 - SOAPAttribute
class AddAttributeToPrincipal
  attr_accessor :in0
  attr_accessor :in1
  attr_accessor :in2

  def initialize(in0 = nil, in1 = nil, in2 = nil)
    @in0 = in0
    @in1 = in1
    @in2 = in2
  end
end

# {urn:SecurityServer}addAttributeToPrincipalResponse
class AddAttributeToPrincipalResponse
  def initialize
  end
end

# {urn:SecurityServer}invalidatePrincipalToken
#   in0 - AuthenticatedToken
#   in1 - SOAP::SOAPString
class InvalidatePrincipalToken
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}invalidatePrincipalTokenResponse
class InvalidatePrincipalTokenResponse
  def initialize
  end
end

# {urn:SecurityServer}findAllGroupNames
#   in0 - AuthenticatedToken
class FindAllGroupNames
  attr_accessor :in0

  def initialize(in0 = nil)
    @in0 = in0
  end
end

# {urn:SecurityServer}findAllGroupNamesResponse
#   out - ArrayOfString
class FindAllGroupNamesResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}findRoleMemberships
#   in0 - AuthenticatedToken
#   in1 - SOAP::SOAPString
class FindRoleMemberships
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}findRoleMembershipsResponse
#   out - ArrayOfString
class FindRoleMembershipsResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}removePrincipal
#   in0 - AuthenticatedToken
#   in1 - SOAP::SOAPString
class RemovePrincipal
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}removePrincipalResponse
class RemovePrincipalResponse
  def initialize
  end
end

# {urn:SecurityServer}isValidPrincipalToken
#   in0 - AuthenticatedToken
#   in1 - SOAP::SOAPString
#   in2 - ArrayOfValidationFactor
class IsValidPrincipalToken
  attr_accessor :in0
  attr_accessor :in1
  attr_accessor :in2

  def initialize(in0 = nil, in1 = nil, in2 = nil)
    @in0 = in0
    @in1 = in1
    @in2 = in2
  end
end

# {urn:SecurityServer}isValidPrincipalTokenResponse
#   out - SOAP::SOAPBoolean
class IsValidPrincipalTokenResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}authenticatePrincipalSimple
#   in0 - AuthenticatedToken
#   in1 - SOAP::SOAPString
#   in2 - SOAP::SOAPString
class AuthenticatePrincipalSimple
  attr_accessor :in0
  attr_accessor :in1
  attr_accessor :in2

  def initialize(in0 = nil, in1 = nil, in2 = nil)
    @in0 = in0
    @in1 = in1
    @in2 = in2
  end
end

# {urn:SecurityServer}authenticatePrincipalSimpleResponse
#   out - SOAP::SOAPString
class AuthenticatePrincipalSimpleResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}removeRole
#   in0 - AuthenticatedToken
#   in1 - SOAP::SOAPString
class RemoveRole
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}removeRoleResponse
class RemoveRoleResponse
  def initialize
  end
end

# {urn:SecurityServer}getCookieInfo
#   in0 - AuthenticatedToken
class GetCookieInfo
  attr_accessor :in0

  def initialize(in0 = nil)
    @in0 = in0
  end
end

# {urn:SecurityServer}getCookieInfoResponse
#   out - SOAPCookieInfo
class GetCookieInfoResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}updatePrincipalAttribute
#   in0 - AuthenticatedToken
#   in1 - SOAP::SOAPString
#   in2 - SOAPAttribute
class UpdatePrincipalAttribute
  attr_accessor :in0
  attr_accessor :in1
  attr_accessor :in2

  def initialize(in0 = nil, in1 = nil, in2 = nil)
    @in0 = in0
    @in1 = in1
    @in2 = in2
  end
end

# {urn:SecurityServer}updatePrincipalAttributeResponse
class UpdatePrincipalAttributeResponse
  def initialize
  end
end

# {urn:SecurityServer}searchGroups
#   in0 - AuthenticatedToken
#   in1 - ArrayOfSearchRestriction
class SearchGroups
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}searchGroupsResponse
#   out - ArrayOfSOAPGroup
class SearchGroupsResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}getCacheTime
#   in0 - AuthenticatedToken
class GetCacheTime
  attr_accessor :in0

  def initialize(in0 = nil)
    @in0 = in0
  end
end

# {urn:SecurityServer}getCacheTimeResponse
#   out - SOAP::SOAPLong
class GetCacheTimeResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}isRoleMember
#   in0 - AuthenticatedToken
#   in1 - SOAP::SOAPString
#   in2 - SOAP::SOAPString
class IsRoleMember
  attr_accessor :in0
  attr_accessor :in1
  attr_accessor :in2

  def initialize(in0 = nil, in1 = nil, in2 = nil)
    @in0 = in0
    @in1 = in1
    @in2 = in2
  end
end

# {urn:SecurityServer}isRoleMemberResponse
#   out - SOAP::SOAPBoolean
class IsRoleMemberResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}updateGroup
#   in0 - AuthenticatedToken
#   in1 - SOAP::SOAPString
#   in2 - SOAP::SOAPString
#   in3 - SOAP::SOAPBoolean
class UpdateGroup
  attr_accessor :in0
  attr_accessor :in1
  attr_accessor :in2
  attr_accessor :in3

  def initialize(in0 = nil, in1 = nil, in2 = nil, in3 = nil)
    @in0 = in0
    @in1 = in1
    @in2 = in2
    @in3 = in3
  end
end

# {urn:SecurityServer}updateGroupResponse
class UpdateGroupResponse
  def initialize
  end
end

# {urn:SecurityServer}findAllRoleNames
#   in0 - AuthenticatedToken
class FindAllRoleNames
  attr_accessor :in0

  def initialize(in0 = nil)
    @in0 = in0
  end
end

# {urn:SecurityServer}findAllRoleNamesResponse
#   out - ArrayOfString
class FindAllRoleNamesResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}findRoleByName
#   in0 - AuthenticatedToken
#   in1 - SOAP::SOAPString
class FindRoleByName
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}findRoleByNameResponse
#   out - SOAPRole
class FindRoleByNameResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}isCacheEnabled
#   in0 - AuthenticatedToken
class IsCacheEnabled
  attr_accessor :in0

  def initialize(in0 = nil)
    @in0 = in0
  end
end

# {urn:SecurityServer}isCacheEnabledResponse
#   out - SOAP::SOAPBoolean
class IsCacheEnabledResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}findGroupByName
#   in0 - AuthenticatedToken
#   in1 - SOAP::SOAPString
class FindGroupByName
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}findGroupByNameResponse
#   out - SOAPGroup
class FindGroupByNameResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}removePrincipalFromRole
#   in0 - AuthenticatedToken
#   in1 - SOAP::SOAPString
#   in2 - SOAP::SOAPString
class RemovePrincipalFromRole
  attr_accessor :in0
  attr_accessor :in1
  attr_accessor :in2

  def initialize(in0 = nil, in1 = nil, in2 = nil)
    @in0 = in0
    @in1 = in1
    @in2 = in2
  end
end

# {urn:SecurityServer}removePrincipalFromRoleResponse
class RemovePrincipalFromRoleResponse
  def initialize
  end
end

# {urn:SecurityServer}authenticatePrincipal
#   in0 - AuthenticatedToken
#   in1 - PrincipalAuthenticationContext
class AuthenticatePrincipal
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}authenticatePrincipalResponse
#   out - SOAP::SOAPString
class AuthenticatePrincipalResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}findGroupMemberships
#   in0 - AuthenticatedToken
#   in1 - SOAP::SOAPString
class FindGroupMemberships
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}findGroupMembershipsResponse
#   out - ArrayOfString
class FindGroupMembershipsResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}addPrincipalToGroup
#   in0 - AuthenticatedToken
#   in1 - SOAP::SOAPString
#   in2 - SOAP::SOAPString
class AddPrincipalToGroup
  attr_accessor :in0
  attr_accessor :in1
  attr_accessor :in2

  def initialize(in0 = nil, in1 = nil, in2 = nil)
    @in0 = in0
    @in1 = in1
    @in2 = in2
  end
end

# {urn:SecurityServer}addPrincipalToGroupResponse
class AddPrincipalToGroupResponse
  def initialize
  end
end

# {urn:SecurityServer}removeGroup
#   in0 - AuthenticatedToken
#   in1 - SOAP::SOAPString
class RemoveGroup
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}removeGroupResponse
class RemoveGroupResponse
  def initialize
  end
end

# {urn:SecurityServer}removeAttributeFromPrincipal
#   in0 - AuthenticatedToken
#   in1 - SOAP::SOAPString
#   in2 - SOAP::SOAPString
class RemoveAttributeFromPrincipal
  attr_accessor :in0
  attr_accessor :in1
  attr_accessor :in2

  def initialize(in0 = nil, in1 = nil, in2 = nil)
    @in0 = in0
    @in1 = in1
    @in2 = in2
  end
end

# {urn:SecurityServer}removeAttributeFromPrincipalResponse
class RemoveAttributeFromPrincipalResponse
  def initialize
  end
end

# {urn:SecurityServer}findAllPrincipalNames
#   in0 - AuthenticatedToken
class FindAllPrincipalNames
  attr_accessor :in0

  def initialize(in0 = nil)
    @in0 = in0
  end
end

# {urn:SecurityServer}findAllPrincipalNamesResponse
#   out - ArrayOfString
class FindAllPrincipalNamesResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}addRole
#   in0 - AuthenticatedToken
#   in1 - SOAPRole
class AddRole
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}addRoleResponse
#   out - SOAPRole
class AddRoleResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}createPrincipalToken
#   in0 - AuthenticatedToken
#   in1 - SOAP::SOAPString
#   in2 - ArrayOfValidationFactor
class CreatePrincipalToken
  attr_accessor :in0
  attr_accessor :in1
  attr_accessor :in2

  def initialize(in0 = nil, in1 = nil, in2 = nil)
    @in0 = in0
    @in1 = in1
    @in2 = in2
  end
end

# {urn:SecurityServer}createPrincipalTokenResponse
#   out - SOAP::SOAPString
class CreatePrincipalTokenResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}searchRoles
#   in0 - AuthenticatedToken
#   in1 - ArrayOfSearchRestriction
class SearchRoles
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}searchRolesResponse
#   out - ArrayOfSOAPRole
class SearchRolesResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}removePrincipalFromGroup
#   in0 - AuthenticatedToken
#   in1 - SOAP::SOAPString
#   in2 - SOAP::SOAPString
class RemovePrincipalFromGroup
  attr_accessor :in0
  attr_accessor :in1
  attr_accessor :in2

  def initialize(in0 = nil, in1 = nil, in2 = nil)
    @in0 = in0
    @in1 = in1
    @in2 = in2
  end
end

# {urn:SecurityServer}removePrincipalFromGroupResponse
class RemovePrincipalFromGroupResponse
  def initialize
  end
end

# {urn:SecurityServer}findPrincipalByName
#   in0 - AuthenticatedToken
#   in1 - SOAP::SOAPString
class FindPrincipalByName
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}findPrincipalByNameResponse
#   out - SOAPPrincipal
class FindPrincipalByNameResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}resetPrincipalCredential
#   in0 - AuthenticatedToken
#   in1 - SOAP::SOAPString
class ResetPrincipalCredential
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}resetPrincipalCredentialResponse
class ResetPrincipalCredentialResponse
  def initialize
  end
end

# {urn:SecurityServer}isGroupMember
#   in0 - AuthenticatedToken
#   in1 - SOAP::SOAPString
#   in2 - SOAP::SOAPString
class IsGroupMember
  attr_accessor :in0
  attr_accessor :in1
  attr_accessor :in2

  def initialize(in0 = nil, in1 = nil, in2 = nil)
    @in0 = in0
    @in1 = in1
    @in2 = in2
  end
end

# {urn:SecurityServer}isGroupMemberResponse
#   out - SOAP::SOAPBoolean
class IsGroupMemberResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}searchPrincipals
#   in0 - AuthenticatedToken
#   in1 - ArrayOfSearchRestriction
class SearchPrincipals
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}searchPrincipalsResponse
#   out - ArrayOfSOAPPrincipal
class SearchPrincipalsResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}getDomain
#   in0 - AuthenticatedToken
class GetDomain
  attr_accessor :in0

  def initialize(in0 = nil)
    @in0 = in0
  end
end

# {urn:SecurityServer}getDomainResponse
#   out - SOAP::SOAPString
class GetDomainResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}authenticateApplication
#   in0 - ApplicationAuthenticationContext
class AuthenticateApplication
  attr_accessor :in0

  def initialize(in0 = nil)
    @in0 = in0
  end
end

# {urn:SecurityServer}authenticateApplicationResponse
#   out - AuthenticatedToken
class AuthenticateApplicationResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end
