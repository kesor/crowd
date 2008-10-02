= crowd
    updated by Evgeny Zislis (evgeny.zislis@gmail.com)
    original by Jason Rimmer (jrimmer@irth.net) & gemified for rubyforge by Daniel Morrison (http://collectiveidea.com)

== DESCRIPTION:

A client for Atlassian[http://www.atlassian.com] Crowd[http://www.atlassian.com/crowd] v1.4.0

=== NOTES:
WSDL stub generated with:
  wsdl2ruby.rb --wsdl http://localhost:8095/crowd/services/SecurityServer?wsdl --type client

Original SOAP API is available from Atlassian at http://confluence.atlassian.com/display/CROWD/SOAP+API

== FEATURES:

Methods exercised:

* authenticatePrincipal
* addPrincipal
* findPrincipalByName
* findPrincipalByToken
* removeAttributeFromPrincipal
* addAttributeToPrincipal
* updatePrincipalAttribute
* removePrincipal
* findAllPrincipalNames
* findAllRoleNames
* addRole
* addPrincipalToRole
* removePrincipalFromRole
* isRoleMember
* removeRole
* invalidatePrincipalToken
* isValidPrincipalToken
* findAllGroupNames
* findGroupMemberships


Assumptions (configured in CrowdTest.rb):

* Application name and password is 'soaptest'
* Application 'soaptest' directory set to 'True'
* Crowd Server is on localhost

== TODO:

Rightsize error handling
Create Rails plugin

== SYNOPSIS:

Ruby client for Atlassian Crowd v1.4.0

== REQUIREMENTS:

* Ruby v1.8.6
* soap4r v1.5.8
* Atlassian Crowd 1.4.0

== INSTALL:

* sudo gem install crowd

== FILES:

* default.rb - Generated
* defaultDriver.rb - Generated
* defaultMappingRegistry - Generated
* README - You're soaking in it
* SecurityServerClient.rb - Generated
* crowd.rb - Class wrapping crowd calls
* test_crowd.rb - Unit tests

== LICENSE:

Public Domain

Created by Jason Rimmer, jrimmer@irth.net on 2007-10-16.
I hereby place this work that I have authored into the public domain
and in the process abandon all copyright protection.

Updated by Evgeny Zislis, evgeny.zislis@gmail.com on 2008-05-14
