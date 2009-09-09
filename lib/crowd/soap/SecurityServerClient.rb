#!/usr/bin/env ruby
require File.join(File.dirname(__FILE__), 'driver.rb')

endpoint_url = ARGV.shift
obj = SecurityServerPortType.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   findAllGroupRelationships(parameters)
#
# ARGS
#   parameters      FindAllGroupRelationships - {urn:SecurityServer}findAllGroupRelationships
#
# RETURNS
#   parameters      FindAllGroupRelationshipsResponse - {urn:SecurityServer}findAllGroupRelationshipsResponse
#
# RAISES
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.findAllGroupRelationships(parameters)

# SYNOPSIS
#   addGroup(parameters)
#
# ARGS
#   parameters      AddGroup - {urn:SecurityServer}addGroup
#
# RETURNS
#   parameters      AddGroupResponse - {urn:SecurityServer}addGroupResponse
#
# RAISES
#   invalidGroupException InvalidGroupException - {http://exception.integration.crowd.atlassian.com}InvalidGroupException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   applicationPermissionException ApplicationPermissionException - {http://exception.integration.crowd.atlassian.com}ApplicationPermissionException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.addGroup(parameters)

# SYNOPSIS
#   addPrincipalToRole(parameters)
#
# ARGS
#   parameters      AddPrincipalToRole - {urn:SecurityServer}addPrincipalToRole
#
# RETURNS
#   parameters      AddPrincipalToRoleResponse - {urn:SecurityServer}addPrincipalToRoleResponse
#
# RAISES
#   objectNotFoundException ObjectNotFoundException - {http://exception.integration.crowd.atlassian.com}ObjectNotFoundException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   applicationPermissionException ApplicationPermissionException - {http://exception.integration.crowd.atlassian.com}ApplicationPermissionException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.addPrincipalToRole(parameters)

# SYNOPSIS
#   findPrincipalByToken(parameters)
#
# ARGS
#   parameters      FindPrincipalByToken - {urn:SecurityServer}findPrincipalByToken
#
# RETURNS
#   parameters      FindPrincipalByTokenResponse - {urn:SecurityServer}findPrincipalByTokenResponse
#
# RAISES
#   invalidTokenException InvalidTokenException - {http://exception.integration.crowd.atlassian.com}InvalidTokenException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.findPrincipalByToken(parameters)

# SYNOPSIS
#   updatePrincipalCredential(parameters)
#
# ARGS
#   parameters      UpdatePrincipalCredential - {urn:SecurityServer}updatePrincipalCredential
#
# RETURNS
#   parameters      UpdatePrincipalCredentialResponse - {urn:SecurityServer}updatePrincipalCredentialResponse
#
# RAISES
#   objectNotFoundException ObjectNotFoundException - {http://exception.integration.crowd.atlassian.com}ObjectNotFoundException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   applicationPermissionException ApplicationPermissionException - {http://exception.integration.crowd.atlassian.com}ApplicationPermissionException
#   invalidCredentialException InvalidCredentialException - {http://exception.integration.crowd.atlassian.com}InvalidCredentialException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.updatePrincipalCredential(parameters)

# SYNOPSIS
#   getGrantedAuthorities(parameters)
#
# ARGS
#   parameters      GetGrantedAuthorities - {urn:SecurityServer}getGrantedAuthorities
#
# RETURNS
#   parameters      GetGrantedAuthoritiesResponse - {urn:SecurityServer}getGrantedAuthoritiesResponse
#
# RAISES
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.getGrantedAuthorities(parameters)

# SYNOPSIS
#   addPrincipal(parameters)
#
# ARGS
#   parameters      AddPrincipal - {urn:SecurityServer}addPrincipal
#
# RETURNS
#   parameters      AddPrincipalResponse - {urn:SecurityServer}addPrincipalResponse
#
# RAISES
#   invalidPrincipalException InvalidPrincipalException - {http://exception.integration.crowd.atlassian.com}InvalidPrincipalException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   applicationPermissionException ApplicationPermissionException - {http://exception.integration.crowd.atlassian.com}ApplicationPermissionException
#   invalidCredentialException InvalidCredentialException - {http://exception.integration.crowd.atlassian.com}InvalidCredentialException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.addPrincipal(parameters)

# SYNOPSIS
#   addAttributeToPrincipal(parameters)
#
# ARGS
#   parameters      AddAttributeToPrincipal - {urn:SecurityServer}addAttributeToPrincipal
#
# RETURNS
#   parameters      AddAttributeToPrincipalResponse - {urn:SecurityServer}addAttributeToPrincipalResponse
#
# RAISES
#   objectNotFoundException ObjectNotFoundException - {http://exception.integration.crowd.atlassian.com}ObjectNotFoundException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   applicationPermissionException ApplicationPermissionException - {http://exception.integration.crowd.atlassian.com}ApplicationPermissionException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.addAttributeToPrincipal(parameters)

# SYNOPSIS
#   invalidatePrincipalToken(parameters)
#
# ARGS
#   parameters      InvalidatePrincipalToken - {urn:SecurityServer}invalidatePrincipalToken
#
# RETURNS
#   parameters      InvalidatePrincipalTokenResponse - {urn:SecurityServer}invalidatePrincipalTokenResponse
#
# RAISES
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.invalidatePrincipalToken(parameters)

# SYNOPSIS
#   findAllGroupNames(parameters)
#
# ARGS
#   parameters      FindAllGroupNames - {urn:SecurityServer}findAllGroupNames
#
# RETURNS
#   parameters      FindAllGroupNamesResponse - {urn:SecurityServer}findAllGroupNamesResponse
#
# RAISES
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.findAllGroupNames(parameters)

# SYNOPSIS
#   findRoleMemberships(parameters)
#
# ARGS
#   parameters      FindRoleMemberships - {urn:SecurityServer}findRoleMemberships
#
# RETURNS
#   parameters      FindRoleMembershipsResponse - {urn:SecurityServer}findRoleMembershipsResponse
#
# RAISES
#   objectNotFoundException ObjectNotFoundException - {http://exception.integration.crowd.atlassian.com}ObjectNotFoundException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.findRoleMemberships(parameters)

# SYNOPSIS
#   removePrincipal(parameters)
#
# ARGS
#   parameters      RemovePrincipal - {urn:SecurityServer}removePrincipal
#
# RETURNS
#   parameters      RemovePrincipalResponse - {urn:SecurityServer}removePrincipalResponse
#
# RAISES
#   objectNotFoundException ObjectNotFoundException - {http://exception.integration.crowd.atlassian.com}ObjectNotFoundException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   applicationPermissionException ApplicationPermissionException - {http://exception.integration.crowd.atlassian.com}ApplicationPermissionException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.removePrincipal(parameters)

# SYNOPSIS
#   isValidPrincipalToken(parameters)
#
# ARGS
#   parameters      IsValidPrincipalToken - {urn:SecurityServer}isValidPrincipalToken
#
# RETURNS
#   parameters      IsValidPrincipalTokenResponse - {urn:SecurityServer}isValidPrincipalTokenResponse
#
# RAISES
#   applicationAccessDeniedException ApplicationAccessDeniedException - {http://exception.integration.crowd.atlassian.com}ApplicationAccessDeniedException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.isValidPrincipalToken(parameters)

# SYNOPSIS
#   authenticatePrincipalSimple(parameters)
#
# ARGS
#   parameters      AuthenticatePrincipalSimple - {urn:SecurityServer}authenticatePrincipalSimple
#
# RETURNS
#   parameters      AuthenticatePrincipalSimpleResponse - {urn:SecurityServer}authenticatePrincipalSimpleResponse
#
# RAISES
#   applicationAccessDeniedException ApplicationAccessDeniedException - {http://exception.integration.crowd.atlassian.com}ApplicationAccessDeniedException
#   invalidAuthenticationException InvalidAuthenticationException - {http://exception.integration.crowd.atlassian.com}InvalidAuthenticationException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   inactiveAccountException InactiveAccountException - {http://exception.integration.crowd.atlassian.com}InactiveAccountException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.authenticatePrincipalSimple(parameters)

# SYNOPSIS
#   removeRole(parameters)
#
# ARGS
#   parameters      RemoveRole - {urn:SecurityServer}removeRole
#
# RETURNS
#   parameters      RemoveRoleResponse - {urn:SecurityServer}removeRoleResponse
#
# RAISES
#   objectNotFoundException ObjectNotFoundException - {http://exception.integration.crowd.atlassian.com}ObjectNotFoundException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   applicationPermissionException ApplicationPermissionException - {http://exception.integration.crowd.atlassian.com}ApplicationPermissionException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.removeRole(parameters)

# SYNOPSIS
#   getCookieInfo(parameters)
#
# ARGS
#   parameters      GetCookieInfo - {urn:SecurityServer}getCookieInfo
#
# RETURNS
#   parameters      GetCookieInfoResponse - {urn:SecurityServer}getCookieInfoResponse
#
# RAISES
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.getCookieInfo(parameters)

# SYNOPSIS
#   updatePrincipalAttribute(parameters)
#
# ARGS
#   parameters      UpdatePrincipalAttribute - {urn:SecurityServer}updatePrincipalAttribute
#
# RETURNS
#   parameters      UpdatePrincipalAttributeResponse - {urn:SecurityServer}updatePrincipalAttributeResponse
#
# RAISES
#   objectNotFoundException ObjectNotFoundException - {http://exception.integration.crowd.atlassian.com}ObjectNotFoundException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   applicationPermissionException ApplicationPermissionException - {http://exception.integration.crowd.atlassian.com}ApplicationPermissionException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.updatePrincipalAttribute(parameters)

# SYNOPSIS
#   searchGroups(parameters)
#
# ARGS
#   parameters      SearchGroups - {urn:SecurityServer}searchGroups
#
# RETURNS
#   parameters      SearchGroupsResponse - {urn:SecurityServer}searchGroupsResponse
#
# RAISES
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.searchGroups(parameters)

# SYNOPSIS
#   getCacheTime(parameters)
#
# ARGS
#   parameters      GetCacheTime - {urn:SecurityServer}getCacheTime
#
# RETURNS
#   parameters      GetCacheTimeResponse - {urn:SecurityServer}getCacheTimeResponse
#
# RAISES
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.getCacheTime(parameters)

# SYNOPSIS
#   isRoleMember(parameters)
#
# ARGS
#   parameters      IsRoleMember - {urn:SecurityServer}isRoleMember
#
# RETURNS
#   parameters      IsRoleMemberResponse - {urn:SecurityServer}isRoleMemberResponse
#
# RAISES
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.isRoleMember(parameters)

# SYNOPSIS
#   updateGroup(parameters)
#
# ARGS
#   parameters      UpdateGroup - {urn:SecurityServer}updateGroup
#
# RETURNS
#   parameters      UpdateGroupResponse - {urn:SecurityServer}updateGroupResponse
#
# RAISES
#   objectNotFoundException ObjectNotFoundException - {http://exception.integration.crowd.atlassian.com}ObjectNotFoundException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   applicationPermissionException ApplicationPermissionException - {http://exception.integration.crowd.atlassian.com}ApplicationPermissionException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.updateGroup(parameters)

# SYNOPSIS
#   findAllRoleNames(parameters)
#
# ARGS
#   parameters      FindAllRoleNames - {urn:SecurityServer}findAllRoleNames
#
# RETURNS
#   parameters      FindAllRoleNamesResponse - {urn:SecurityServer}findAllRoleNamesResponse
#
# RAISES
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.findAllRoleNames(parameters)

# SYNOPSIS
#   findRoleByName(parameters)
#
# ARGS
#   parameters      FindRoleByName - {urn:SecurityServer}findRoleByName
#
# RETURNS
#   parameters      FindRoleByNameResponse - {urn:SecurityServer}findRoleByNameResponse
#
# RAISES
#   objectNotFoundException ObjectNotFoundException - {http://exception.integration.crowd.atlassian.com}ObjectNotFoundException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.findRoleByName(parameters)

# SYNOPSIS
#   isCacheEnabled(parameters)
#
# ARGS
#   parameters      IsCacheEnabled - {urn:SecurityServer}isCacheEnabled
#
# RETURNS
#   parameters      IsCacheEnabledResponse - {urn:SecurityServer}isCacheEnabledResponse
#
# RAISES
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.isCacheEnabled(parameters)

# SYNOPSIS
#   findGroupByName(parameters)
#
# ARGS
#   parameters      FindGroupByName - {urn:SecurityServer}findGroupByName
#
# RETURNS
#   parameters      FindGroupByNameResponse - {urn:SecurityServer}findGroupByNameResponse
#
# RAISES
#   objectNotFoundException ObjectNotFoundException - {http://exception.integration.crowd.atlassian.com}ObjectNotFoundException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.findGroupByName(parameters)

# SYNOPSIS
#   removePrincipalFromRole(parameters)
#
# ARGS
#   parameters      RemovePrincipalFromRole - {urn:SecurityServer}removePrincipalFromRole
#
# RETURNS
#   parameters      RemovePrincipalFromRoleResponse - {urn:SecurityServer}removePrincipalFromRoleResponse
#
# RAISES
#   objectNotFoundException ObjectNotFoundException - {http://exception.integration.crowd.atlassian.com}ObjectNotFoundException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   applicationPermissionException ApplicationPermissionException - {http://exception.integration.crowd.atlassian.com}ApplicationPermissionException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.removePrincipalFromRole(parameters)

# SYNOPSIS
#   authenticatePrincipal(parameters)
#
# ARGS
#   parameters      AuthenticatePrincipal - {urn:SecurityServer}authenticatePrincipal
#
# RETURNS
#   parameters      AuthenticatePrincipalResponse - {urn:SecurityServer}authenticatePrincipalResponse
#
# RAISES
#   applicationAccessDeniedException ApplicationAccessDeniedException - {http://exception.integration.crowd.atlassian.com}ApplicationAccessDeniedException
#   invalidAuthenticationException InvalidAuthenticationException - {http://exception.integration.crowd.atlassian.com}InvalidAuthenticationException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   inactiveAccountException InactiveAccountException - {http://exception.integration.crowd.atlassian.com}InactiveAccountException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.authenticatePrincipal(parameters)

# SYNOPSIS
#   findGroupMemberships(parameters)
#
# ARGS
#   parameters      FindGroupMemberships - {urn:SecurityServer}findGroupMemberships
#
# RETURNS
#   parameters      FindGroupMembershipsResponse - {urn:SecurityServer}findGroupMembershipsResponse
#
# RAISES
#   objectNotFoundException ObjectNotFoundException - {http://exception.integration.crowd.atlassian.com}ObjectNotFoundException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.findGroupMemberships(parameters)

# SYNOPSIS
#   addPrincipalToGroup(parameters)
#
# ARGS
#   parameters      AddPrincipalToGroup - {urn:SecurityServer}addPrincipalToGroup
#
# RETURNS
#   parameters      AddPrincipalToGroupResponse - {urn:SecurityServer}addPrincipalToGroupResponse
#
# RAISES
#   objectNotFoundException ObjectNotFoundException - {http://exception.integration.crowd.atlassian.com}ObjectNotFoundException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   applicationPermissionException ApplicationPermissionException - {http://exception.integration.crowd.atlassian.com}ApplicationPermissionException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.addPrincipalToGroup(parameters)

# SYNOPSIS
#   removeGroup(parameters)
#
# ARGS
#   parameters      RemoveGroup - {urn:SecurityServer}removeGroup
#
# RETURNS
#   parameters      RemoveGroupResponse - {urn:SecurityServer}removeGroupResponse
#
# RAISES
#   objectNotFoundException ObjectNotFoundException - {http://exception.integration.crowd.atlassian.com}ObjectNotFoundException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   applicationPermissionException ApplicationPermissionException - {http://exception.integration.crowd.atlassian.com}ApplicationPermissionException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.removeGroup(parameters)

# SYNOPSIS
#   removeAttributeFromPrincipal(parameters)
#
# ARGS
#   parameters      RemoveAttributeFromPrincipal - {urn:SecurityServer}removeAttributeFromPrincipal
#
# RETURNS
#   parameters      RemoveAttributeFromPrincipalResponse - {urn:SecurityServer}removeAttributeFromPrincipalResponse
#
# RAISES
#   objectNotFoundException ObjectNotFoundException - {http://exception.integration.crowd.atlassian.com}ObjectNotFoundException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   applicationPermissionException ApplicationPermissionException - {http://exception.integration.crowd.atlassian.com}ApplicationPermissionException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.removeAttributeFromPrincipal(parameters)

# SYNOPSIS
#   findAllPrincipalNames(parameters)
#
# ARGS
#   parameters      FindAllPrincipalNames - {urn:SecurityServer}findAllPrincipalNames
#
# RETURNS
#   parameters      FindAllPrincipalNamesResponse - {urn:SecurityServer}findAllPrincipalNamesResponse
#
# RAISES
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.findAllPrincipalNames(parameters)

# SYNOPSIS
#   addRole(parameters)
#
# ARGS
#   parameters      AddRole - {urn:SecurityServer}addRole
#
# RETURNS
#   parameters      AddRoleResponse - {urn:SecurityServer}addRoleResponse
#
# RAISES
#   invalidRoleException InvalidRoleException - {http://exception.integration.crowd.atlassian.com}InvalidRoleException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   applicationPermissionException ApplicationPermissionException - {http://exception.integration.crowd.atlassian.com}ApplicationPermissionException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.addRole(parameters)

# SYNOPSIS
#   createPrincipalToken(parameters)
#
# ARGS
#   parameters      CreatePrincipalToken - {urn:SecurityServer}createPrincipalToken
#
# RETURNS
#   parameters      CreatePrincipalTokenResponse - {urn:SecurityServer}createPrincipalTokenResponse
#
# RAISES
#   applicationAccessDeniedException ApplicationAccessDeniedException - {http://exception.integration.crowd.atlassian.com}ApplicationAccessDeniedException
#   invalidAuthenticationException InvalidAuthenticationException - {http://exception.integration.crowd.atlassian.com}InvalidAuthenticationException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   inactiveAccountException InactiveAccountException - {http://exception.integration.crowd.atlassian.com}InactiveAccountException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.createPrincipalToken(parameters)

# SYNOPSIS
#   searchRoles(parameters)
#
# ARGS
#   parameters      SearchRoles - {urn:SecurityServer}searchRoles
#
# RETURNS
#   parameters      SearchRolesResponse - {urn:SecurityServer}searchRolesResponse
#
# RAISES
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.searchRoles(parameters)

# SYNOPSIS
#   removePrincipalFromGroup(parameters)
#
# ARGS
#   parameters      RemovePrincipalFromGroup - {urn:SecurityServer}removePrincipalFromGroup
#
# RETURNS
#   parameters      RemovePrincipalFromGroupResponse - {urn:SecurityServer}removePrincipalFromGroupResponse
#
# RAISES
#   objectNotFoundException ObjectNotFoundException - {http://exception.integration.crowd.atlassian.com}ObjectNotFoundException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   applicationPermissionException ApplicationPermissionException - {http://exception.integration.crowd.atlassian.com}ApplicationPermissionException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.removePrincipalFromGroup(parameters)

# SYNOPSIS
#   findPrincipalByName(parameters)
#
# ARGS
#   parameters      FindPrincipalByName - {urn:SecurityServer}findPrincipalByName
#
# RETURNS
#   parameters      FindPrincipalByNameResponse - {urn:SecurityServer}findPrincipalByNameResponse
#
# RAISES
#   objectNotFoundException ObjectNotFoundException - {http://exception.integration.crowd.atlassian.com}ObjectNotFoundException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.findPrincipalByName(parameters)

# SYNOPSIS
#   resetPrincipalCredential(parameters)
#
# ARGS
#   parameters      ResetPrincipalCredential - {urn:SecurityServer}resetPrincipalCredential
#
# RETURNS
#   parameters      ResetPrincipalCredentialResponse - {urn:SecurityServer}resetPrincipalCredentialResponse
#
# RAISES
#   objectNotFoundException ObjectNotFoundException - {http://exception.integration.crowd.atlassian.com}ObjectNotFoundException
#   invalidEmailAddressException InvalidEmailAddressException - {http://exception.integration.crowd.atlassian.com}InvalidEmailAddressException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   applicationPermissionException ApplicationPermissionException - {http://exception.integration.crowd.atlassian.com}ApplicationPermissionException
#   invalidCredentialException InvalidCredentialException - {http://exception.integration.crowd.atlassian.com}InvalidCredentialException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.resetPrincipalCredential(parameters)

# SYNOPSIS
#   isGroupMember(parameters)
#
# ARGS
#   parameters      IsGroupMember - {urn:SecurityServer}isGroupMember
#
# RETURNS
#   parameters      IsGroupMemberResponse - {urn:SecurityServer}isGroupMemberResponse
#
# RAISES
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.isGroupMember(parameters)

# SYNOPSIS
#   searchPrincipals(parameters)
#
# ARGS
#   parameters      SearchPrincipals - {urn:SecurityServer}searchPrincipals
#
# RETURNS
#   parameters      SearchPrincipalsResponse - {urn:SecurityServer}searchPrincipalsResponse
#
# RAISES
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.searchPrincipals(parameters)

# SYNOPSIS
#   getDomain(parameters)
#
# ARGS
#   parameters      GetDomain - {urn:SecurityServer}getDomain
#
# RETURNS
#   parameters      GetDomainResponse - {urn:SecurityServer}getDomainResponse
#
# RAISES
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.getDomain(parameters)

# SYNOPSIS
#   authenticateApplication(parameters)
#
# ARGS
#   parameters      AuthenticateApplication - {urn:SecurityServer}authenticateApplication
#
# RETURNS
#   parameters      AuthenticateApplicationResponse - {urn:SecurityServer}authenticateApplicationResponse
#
# RAISES
#   invalidAuthenticationException InvalidAuthenticationException - {http://exception.integration.crowd.atlassian.com}InvalidAuthenticationException
#   invalidAuthorizationTokenException InvalidAuthorizationTokenException - {http://exception.integration.crowd.atlassian.com}InvalidAuthorizationTokenException
#   remoteException RemoteException - {http://rmi.java}RemoteException
#
parameters = nil
puts obj.authenticateApplication(parameters)


