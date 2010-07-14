#!/usr/bin/env ruby

require 'rubygems'
gem 'soap4r' 

require File.join(File.dirname(__FILE__), '..', 'lib', 'crowd')

# For this demo to work, you must go to Crowd admin area (ususally http://localhost:8095/crowd) 
# and set up an application named 'soaptest' with password 'soaptest'.
#
# Also, you need to add a user 'demo' with password 'demo'.

puts "Crowd client configuration"
Crowd.crowd_url = 'http://127.0.0.1:8095/crowd/services/SecurityServer'
Crowd.crowd_app_name = 'soaptest'
Crowd.crowd_app_pword = 'soaptest'

puts "Authenticate the application"
Crowd.authenticate_application

puts "Authenticate user 'demo'"
token = Crowd.authenticate_principal('demo','demo')

puts "User authenticated"
