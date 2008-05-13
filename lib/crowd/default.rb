require 'xsd/qname'

# {http://authentication.integration.crowd.atlassian.com}AuthenticatedToken
class AuthenticatedToken
  attr_accessor :name
  attr_accessor :token

  def initialize(name = nil, token = nil)
    @name = name
    @token = token
  end
end

# {http://authentication.integration.crowd.atlassian.com}ApplicationAuthenticationContext
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

# {http://authentication.integration.crowd.atlassian.com}PasswordCredential
class PasswordCredential
  attr_accessor :credential
  attr_accessor :encryptedCrednetial

  def initialize(credential = nil, encryptedCrednetial = nil)
    @credential = credential
    @encryptedCrednetial = encryptedCrednetial
  end
end

# {http://authentication.integration.crowd.atlassian.com}ArrayOfValidationFactor
class ArrayOfValidationFactor < ::Array
end

# {http://authentication.integration.crowd.atlassian.com}ValidationFactor
class ValidationFactor
  attr_accessor :name
  attr_accessor :value

  def initialize(name = nil, value = nil)
    @name = name
    @value = value
  end
end

# {http://authentication.integration.crowd.atlassian.com}PrincipalAuthenticationContext
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

# {urn:SecurityServer}ArrayOfString
class ArrayOfString < ::Array
end

# {http://soap.integration.crowd.atlassian.com}SOAPPrincipal
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

# {http://soap.integration.crowd.atlassian.com}ArrayOfSOAPAttribute
class ArrayOfSOAPAttribute < ::Array
end

# {http://soap.integration.crowd.atlassian.com}SOAPAttribute
class SOAPAttribute
  attr_accessor :name
  attr_accessor :values

  def initialize(name = nil, values = nil)
    @name = name
    @values = values
  end
end

# {http://soap.integration.crowd.atlassian.com}SOAPRole
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

# {http://soap.integration.crowd.atlassian.com}ArrayOfSearchRestriction
class ArrayOfSearchRestriction < ::Array
end

# {http://soap.integration.crowd.atlassian.com}SearchRestriction
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

# {http://soap.integration.crowd.atlassian.com}SOAPGroup
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

# {http://soap.integration.crowd.atlassian.com}ArrayOfSOAPPrincipal
class ArrayOfSOAPPrincipal < ::Array
end

# {http://soap.integration.crowd.atlassian.com}ArrayOfSOAPRole
class ArrayOfSOAPRole < ::Array
end

# {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
class InvalidAuthorizationTokenException
  attr_accessor :cause
  attr_accessor :messages
  attr_accessor :throwableCount
  attr_accessor :throwables

  def initialize(cause = nil, messages = nil, throwableCount = nil, throwables = nil)
    @cause = cause
    @messages = messages
    @throwableCount = throwableCount
    @throwables = throwables
  end
end

# {http://exception.integration.crowd.atlassian.com}ObjectNotFoundException
class ObjectNotFoundException
  attr_accessor :cause
  attr_accessor :messages
  attr_accessor :throwableCount
  attr_accessor :throwables

  def initialize(cause = nil, messages = nil, throwableCount = nil, throwables = nil)
    @cause = cause
    @messages = messages
    @throwableCount = throwableCount
    @throwables = throwables
  end
end

# {http://exception.integration.crowd.atlassian.com}InvalidAuthenticationException
class InvalidAuthenticationException
  attr_accessor :cause
  attr_accessor :messages
  attr_accessor :throwableCount
  attr_accessor :throwables

  def initialize(cause = nil, messages = nil, throwableCount = nil, throwables = nil)
    @cause = cause
    @messages = messages
    @throwableCount = throwableCount
    @throwables = throwables
  end
end

# {http://exception.integration.crowd.atlassian.com}DirectoryPermissionException
class DirectoryPermissionException
  attr_accessor :cause
  attr_accessor :messages
  attr_accessor :throwableCount
  attr_accessor :throwables

  def initialize(cause = nil, messages = nil, throwableCount = nil, throwables = nil)
    @cause = cause
    @messages = messages
    @throwableCount = throwableCount
    @throwables = throwables
  end
end

# {http://exception.integration.crowd.atlassian.com}InvalidRoleException
class InvalidRoleException
  attr_accessor :cause
  attr_accessor :messages
  attr_accessor :throwableCount
  attr_accessor :throwables

  def initialize(cause = nil, messages = nil, throwableCount = nil, throwables = nil)
    @cause = cause
    @messages = messages
    @throwableCount = throwableCount
    @throwables = throwables
  end
end

# {http://exception.integration.crowd.atlassian.com}InvalidTokenException
class InvalidTokenException
  attr_accessor :cause
  attr_accessor :messages
  attr_accessor :throwableCount
  attr_accessor :throwables

  def initialize(cause = nil, messages = nil, throwableCount = nil, throwables = nil)
    @cause = cause
    @messages = messages
    @throwableCount = throwableCount
    @throwables = throwables
  end
end

# {http://exception.integration.crowd.atlassian.com}InvalidGroupException
class InvalidGroupException
  attr_accessor :cause
  attr_accessor :messages
  attr_accessor :throwableCount
  attr_accessor :throwables

  def initialize(cause = nil, messages = nil, throwableCount = nil, throwables = nil)
    @cause = cause
    @messages = messages
    @throwableCount = throwableCount
    @throwables = throwables
  end
end

# {http://exception.integration.crowd.atlassian.com}InvalidCredentialException
class InvalidCredentialException
  attr_accessor :cause
  attr_accessor :messages
  attr_accessor :throwableCount
  attr_accessor :throwables

  def initialize(cause = nil, messages = nil, throwableCount = nil, throwables = nil)
    @cause = cause
    @messages = messages
    @throwableCount = throwableCount
    @throwables = throwables
  end
end

# {http://exception.integration.crowd.atlassian.com}InvalidPrincipalException
class InvalidPrincipalException
  attr_accessor :cause
  attr_accessor :messages
  attr_accessor :throwableCount
  attr_accessor :throwables

  def initialize(cause = nil, messages = nil, throwableCount = nil, throwables = nil)
    @cause = cause
    @messages = messages
    @throwableCount = throwableCount
    @throwables = throwables
  end
end

# {http://exception.integration.crowd.atlassian.com}InactiveAccountException
class InactiveAccountException
  attr_accessor :cause
  attr_accessor :messages
  attr_accessor :throwableCount
  attr_accessor :throwables

  def initialize(cause = nil, messages = nil, throwableCount = nil, throwables = nil)
    @cause = cause
    @messages = messages
    @throwableCount = throwableCount
    @throwables = throwables
  end
end

# {http://lang.java}Throwable
class Throwable
  def initialize
  end
end

# {http://lang.java}ArrayOfThrowable
class ArrayOfThrowable < ::Array
end

# {http://rmi.java}RemoteException
class RemoteException
  attr_accessor :cause
  attr_accessor :message

  def initialize(cause = nil, message = nil)
    @cause = cause
    @message = message
  end
end

# {urn:SecurityServer}findPrincipalByName
class FindPrincipalByName
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}findPrincipalByNameResponse
class FindPrincipalByNameResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}authenticateApplication
class AuthenticateApplication
  attr_accessor :in0

  def initialize(in0 = nil)
    @in0 = in0
  end
end

# {urn:SecurityServer}authenticateApplicationResponse
class AuthenticateApplicationResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}addPrincipalToGroup
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

# {urn:SecurityServer}findRoleByName
class FindRoleByName
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}findRoleByNameResponse
class FindRoleByNameResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}addRole
class AddRole
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}addRoleResponse
class AddRoleResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}findPrincipalByToken
class FindPrincipalByToken
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}findPrincipalByTokenResponse
class FindPrincipalByTokenResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}isGroupMember
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
class IsGroupMemberResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}searchGroups
class SearchGroups
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}searchGroupsResponse
class SearchGroupsResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}getDomain
class GetDomain
  attr_accessor :in0

  def initialize(in0 = nil)
    @in0 = in0
  end
end

# {urn:SecurityServer}getDomainResponse
class GetDomainResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}removeAttributeFromPrincipal
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

# {urn:SecurityServer}isRoleMember
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
class IsRoleMemberResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}removeRole
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

# {urn:SecurityServer}removePrincipalFromRole
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

# {urn:SecurityServer}addGroup
class AddGroup
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}addGroupResponse
class AddGroupResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}findRoleMemberships
class FindRoleMemberships
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}findRoleMembershipsResponse
class FindRoleMembershipsResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}getCacheTime
class GetCacheTime
  attr_accessor :in0

  def initialize(in0 = nil)
    @in0 = in0
  end
end

# {urn:SecurityServer}getCacheTimeResponse
class GetCacheTimeResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}removePrincipal
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

# {urn:SecurityServer}resetPrincipalCredential
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

# {urn:SecurityServer}findAllRoleNames
class FindAllRoleNames
  attr_accessor :in0

  def initialize(in0 = nil)
    @in0 = in0
  end
end

# {urn:SecurityServer}findAllRoleNamesResponse
class FindAllRoleNamesResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}addPrincipalToRole
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

# {urn:SecurityServer}invalidatePrincipalToken
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

# {urn:SecurityServer}searchPrincipals
class SearchPrincipals
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}searchPrincipalsResponse
class SearchPrincipalsResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}findGroupByName
class FindGroupByName
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}findGroupByNameResponse
class FindGroupByNameResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}findAllGroupNames
class FindAllGroupNames
  attr_accessor :in0

  def initialize(in0 = nil)
    @in0 = in0
  end
end

# {urn:SecurityServer}findAllGroupNamesResponse
class FindAllGroupNamesResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}addAttributeToPrincipal
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

# {urn:SecurityServer}removePrincipalFromGroup
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

# {urn:SecurityServer}findGroupMemberships
class FindGroupMemberships
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}findGroupMembershipsResponse
class FindGroupMembershipsResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}updatePrincipalCredential
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

# {urn:SecurityServer}updatePrincipalAttribute
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

# {urn:SecurityServer}findAllPrincipalNames
class FindAllPrincipalNames
  attr_accessor :in0

  def initialize(in0 = nil)
    @in0 = in0
  end
end

# {urn:SecurityServer}findAllPrincipalNamesResponse
class FindAllPrincipalNamesResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}searchRoles
class SearchRoles
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}searchRolesResponse
class SearchRolesResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}isCacheEnabled
class IsCacheEnabled
  attr_accessor :in0

  def initialize(in0 = nil)
    @in0 = in0
  end
end

# {urn:SecurityServer}isCacheEnabledResponse
class IsCacheEnabledResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}addPrincipal
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
class AddPrincipalResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}isValidPrincipalToken
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
class IsValidPrincipalTokenResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end

# {urn:SecurityServer}removeGroup
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

# {urn:SecurityServer}authenticatePrincipal
class AuthenticatePrincipal
  attr_accessor :in0
  attr_accessor :in1

  def initialize(in0 = nil, in1 = nil)
    @in0 = in0
    @in1 = in1
  end
end

# {urn:SecurityServer}authenticatePrincipalResponse
class AuthenticatePrincipalResponse
  attr_accessor :out

  def initialize(out = nil)
    @out = out
  end
end
