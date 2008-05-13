require File.join(File.dirname(__FILE__), 'default.rb')
require File.join(File.dirname(__FILE__), 'defaultMappingRegistry.rb')

require 'soap/rpc/driver'

class SecurityServerPortType < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://localhost:8095/crowd/services/SecurityServer"

  Methods = [
    [ "",
      "findPrincipalByName",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findPrincipalByName"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findPrincipalByNameResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "ObjectNotFoundException"=>{:name=>"ObjectNotFoundException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "authenticateApplication",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "authenticateApplication"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "authenticateApplicationResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "InvalidAuthenticationException"=>{:name=>"InvalidAuthenticationException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "addPrincipalToGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addPrincipalToGroup"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addPrincipalToGroupResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"DirectoryPermissionException"=>{:name=>"DirectoryPermissionException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "ObjectNotFoundException"=>{:name=>"ObjectNotFoundException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "findRoleByName",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findRoleByName"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findRoleByNameResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "ObjectNotFoundException"=>{:name=>"ObjectNotFoundException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "addRole",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addRole"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addRoleResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"DirectoryPermissionException"=>{:name=>"DirectoryPermissionException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "InvalidRoleException"=>{:name=>"InvalidRoleException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "findPrincipalByToken",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findPrincipalByToken"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findPrincipalByTokenResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "InvalidTokenException"=>{:name=>"InvalidTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "isGroupMember",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "isGroupMember"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "isGroupMemberResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "searchGroups",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "searchGroups"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "searchGroupsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "getDomain",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "getDomain"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "getDomainResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "removeAttributeFromPrincipal",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removeAttributeFromPrincipal"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removeAttributeFromPrincipalResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"DirectoryPermissionException"=>{:name=>"DirectoryPermissionException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "ObjectNotFoundException"=>{:name=>"ObjectNotFoundException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "isRoleMember",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "isRoleMember"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "isRoleMemberResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "removeRole",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removeRole"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removeRoleResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"DirectoryPermissionException"=>{:name=>"DirectoryPermissionException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "ObjectNotFoundException"=>{:name=>"ObjectNotFoundException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "removePrincipalFromRole",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removePrincipalFromRole"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removePrincipalFromRoleResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"DirectoryPermissionException"=>{:name=>"DirectoryPermissionException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "ObjectNotFoundException"=>{:name=>"ObjectNotFoundException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "addGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addGroup"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addGroupResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidGroupException"=>{:name=>"InvalidGroupException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "DirectoryPermissionException"=>{:name=>"DirectoryPermissionException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "findRoleMemberships",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findRoleMemberships"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findRoleMembershipsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "getCacheTime",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "getCacheTime"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "getCacheTimeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "removePrincipal",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removePrincipal"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removePrincipalResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"DirectoryPermissionException"=>{:name=>"DirectoryPermissionException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "ObjectNotFoundException"=>{:name=>"ObjectNotFoundException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "resetPrincipalCredential",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "resetPrincipalCredential"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "resetPrincipalCredentialResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"DirectoryPermissionException"=>{:name=>"DirectoryPermissionException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "InvalidCredentialException"=>{:name=>"InvalidCredentialException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "ObjectNotFoundException"=>{:name=>"ObjectNotFoundException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "findAllRoleNames",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findAllRoleNames"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findAllRoleNamesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "addPrincipalToRole",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addPrincipalToRole"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addPrincipalToRoleResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"DirectoryPermissionException"=>{:name=>"DirectoryPermissionException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "ObjectNotFoundException"=>{:name=>"ObjectNotFoundException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "invalidatePrincipalToken",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "invalidatePrincipalToken"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "invalidatePrincipalTokenResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "searchPrincipals",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "searchPrincipals"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "searchPrincipalsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "findGroupByName",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findGroupByName"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findGroupByNameResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "ObjectNotFoundException"=>{:name=>"ObjectNotFoundException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "findAllGroupNames",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findAllGroupNames"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findAllGroupNamesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "addAttributeToPrincipal",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addAttributeToPrincipal"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addAttributeToPrincipalResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"DirectoryPermissionException"=>{:name=>"DirectoryPermissionException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "ObjectNotFoundException"=>{:name=>"ObjectNotFoundException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "removePrincipalFromGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removePrincipalFromGroup"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removePrincipalFromGroupResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"DirectoryPermissionException"=>{:name=>"DirectoryPermissionException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "ObjectNotFoundException"=>{:name=>"ObjectNotFoundException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "findGroupMemberships",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findGroupMemberships"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findGroupMembershipsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "updatePrincipalCredential",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "updatePrincipalCredential"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "updatePrincipalCredentialResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"DirectoryPermissionException"=>{:name=>"DirectoryPermissionException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "InvalidCredentialException"=>{:name=>"InvalidCredentialException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "ObjectNotFoundException"=>{:name=>"ObjectNotFoundException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "updatePrincipalAttribute",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "updatePrincipalAttribute"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "updatePrincipalAttributeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"DirectoryPermissionException"=>{:name=>"DirectoryPermissionException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "ObjectNotFoundException"=>{:name=>"ObjectNotFoundException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "findAllPrincipalNames",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findAllPrincipalNames"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findAllPrincipalNamesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "searchRoles",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "searchRoles"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "searchRolesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "isCacheEnabled",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "isCacheEnabled"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "isCacheEnabledResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "addPrincipal",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addPrincipal"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addPrincipalResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"DirectoryPermissionException"=>{:name=>"DirectoryPermissionException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "InvalidCredentialException"=>{:name=>"InvalidCredentialException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "InvalidPrincipalException"=>{:name=>"InvalidPrincipalException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "isValidPrincipalToken",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "isValidPrincipalToken"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "isValidPrincipalTokenResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "removeGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removeGroup"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removeGroupResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"DirectoryPermissionException"=>{:name=>"DirectoryPermissionException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "ObjectNotFoundException"=>{:name=>"ObjectNotFoundException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ],
    [ "",
      "authenticatePrincipal",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "authenticatePrincipal"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "authenticatePrincipalResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidAuthorizationTokenException"=>{:name=>"InvalidAuthorizationTokenException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "InvalidAuthenticationException"=>{:name=>"InvalidAuthenticationException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "InactiveAccountException"=>{:name=>"InactiveAccountException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}, "RemoteException"=>{:name=>"RemoteException", :namespace=>nil, :encodingstyle=>"document", :use=>"literal", :ns=>"urn:SecurityServer"}} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

