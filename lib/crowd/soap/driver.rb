require File.join(File.dirname(__FILE__), 'default.rb')
require File.join(File.dirname(__FILE__), 'mapping_registry.rb')
require 'soap/rpc/driver'

class SecurityServerPortType < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://localhost:8095/crowd/services/SecurityServer"

  Methods = [
    [ "",
      "findAllGroupRelationships",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findAllGroupRelationships"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findAllGroupRelationshipsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "addGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addGroup"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addGroupResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidGroupException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidGroupException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ApplicationPermissionException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "addPrincipalToRole",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addPrincipalToRole"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addPrincipalToRoleResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ApplicationPermissionException", :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ObjectNotFoundException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "findPrincipalByToken",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findPrincipalByToken"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findPrincipalByTokenResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}, "InvalidTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidTokenException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "updatePrincipalCredential",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "updatePrincipalCredential"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "updatePrincipalCredentialResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ApplicationPermissionException", :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ObjectNotFoundException", :encodingstyle=>"document"}, "InvalidCredentialException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidCredentialException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "getGrantedAuthorities",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "getGrantedAuthorities"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "getGrantedAuthoritiesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "addPrincipal",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addPrincipal"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addPrincipalResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidPrincipalException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidPrincipalException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ApplicationPermissionException", :encodingstyle=>"document"}, "InvalidCredentialException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidCredentialException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "addAttributeToPrincipal",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addAttributeToPrincipal"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addAttributeToPrincipalResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ApplicationPermissionException", :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ObjectNotFoundException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "invalidatePrincipalToken",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "invalidatePrincipalToken"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "invalidatePrincipalTokenResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "findAllGroupNames",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findAllGroupNames"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findAllGroupNamesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "findRoleMemberships",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findRoleMemberships"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findRoleMembershipsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ObjectNotFoundException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "removePrincipal",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removePrincipal"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removePrincipalResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ApplicationPermissionException", :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ObjectNotFoundException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "isValidPrincipalToken",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "isValidPrincipalToken"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "isValidPrincipalTokenResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "ApplicationAccessDeniedException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ApplicationAccessDeniedException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "authenticatePrincipalSimple",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "authenticatePrincipalSimple"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "authenticatePrincipalSimpleResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InactiveAccountException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InactiveAccountException", :encodingstyle=>"document"}, "InvalidAuthenticationException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthenticationException", :encodingstyle=>"document"}, "ApplicationAccessDeniedException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ApplicationAccessDeniedException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "removeRole",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removeRole"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removeRoleResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ApplicationPermissionException", :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ObjectNotFoundException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "getCookieInfo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "getCookieInfo"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "getCookieInfoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "updatePrincipalAttribute",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "updatePrincipalAttribute"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "updatePrincipalAttributeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ApplicationPermissionException", :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ObjectNotFoundException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "searchGroups",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "searchGroups"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "searchGroupsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "getCacheTime",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "getCacheTime"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "getCacheTimeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "isRoleMember",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "isRoleMember"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "isRoleMemberResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "updateGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "updateGroup"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "updateGroupResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ApplicationPermissionException", :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ObjectNotFoundException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "findAllRoleNames",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findAllRoleNames"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findAllRoleNamesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "findRoleByName",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findRoleByName"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findRoleByNameResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ObjectNotFoundException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "isCacheEnabled",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "isCacheEnabled"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "isCacheEnabledResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "findGroupByName",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findGroupByName"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findGroupByNameResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ObjectNotFoundException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "removePrincipalFromRole",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removePrincipalFromRole"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removePrincipalFromRoleResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ApplicationPermissionException", :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ObjectNotFoundException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "authenticatePrincipal",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "authenticatePrincipal"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "authenticatePrincipalResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InactiveAccountException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InactiveAccountException", :encodingstyle=>"document"}, "InvalidAuthenticationException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthenticationException", :encodingstyle=>"document"}, "ApplicationAccessDeniedException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ApplicationAccessDeniedException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "findGroupMemberships",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findGroupMemberships"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findGroupMembershipsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ObjectNotFoundException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "addPrincipalToGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addPrincipalToGroup"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addPrincipalToGroupResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ApplicationPermissionException", :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ObjectNotFoundException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "removeGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removeGroup"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removeGroupResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ApplicationPermissionException", :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ObjectNotFoundException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "removeAttributeFromPrincipal",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removeAttributeFromPrincipal"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removeAttributeFromPrincipalResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ApplicationPermissionException", :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ObjectNotFoundException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "findAllPrincipalNames",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findAllPrincipalNames"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findAllPrincipalNamesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "addRole",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addRole"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "addRoleResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}, "InvalidRoleException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidRoleException", :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ApplicationPermissionException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "createPrincipalToken",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "createPrincipalToken"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "createPrincipalTokenResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InactiveAccountException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InactiveAccountException", :encodingstyle=>"document"}, "InvalidAuthenticationException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthenticationException", :encodingstyle=>"document"}, "ApplicationAccessDeniedException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ApplicationAccessDeniedException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "searchRoles",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "searchRoles"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "searchRolesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "removePrincipalFromGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removePrincipalFromGroup"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "removePrincipalFromGroupResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ApplicationPermissionException", :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ObjectNotFoundException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "findPrincipalByName",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findPrincipalByName"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "findPrincipalByNameResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ObjectNotFoundException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "resetPrincipalCredential",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "resetPrincipalCredential"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "resetPrincipalCredentialResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}, "ApplicationPermissionException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ApplicationPermissionException", :encodingstyle=>"document"}, "ObjectNotFoundException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"ObjectNotFoundException", :encodingstyle=>"document"}, "InvalidEmailAddressException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidEmailAddressException", :encodingstyle=>"document"}, "InvalidCredentialException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidCredentialException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "isGroupMember",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "isGroupMember"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "isGroupMemberResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "searchPrincipals",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "searchPrincipals"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "searchPrincipalsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "getDomain",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "getDomain"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "getDomainResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "authenticateApplication",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "authenticateApplication"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:SecurityServer", "authenticateApplicationResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"RemoteException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"RemoteException", :encodingstyle=>"document"}, "InvalidAuthenticationException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthenticationException", :encodingstyle=>"document"}, "InvalidAuthorizationTokenException_"=>{:use=>"literal", :ns=>"urn:SecurityServer", :namespace=>nil, :name=>"InvalidAuthorizationTokenException", :encodingstyle=>"document"}} }
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

