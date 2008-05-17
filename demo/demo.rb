#!/usr/bin/env ruby

##
# A demonstration of Crowd SSO, using ActionPack's
# action_controller - the controller part of Rails MVC
#
require 'rubygems'
gem 'actionpack'
require 'action_controller'

# required configuration for sessions to work
ActionController::Base.session = {
   :session_key => '_crowd_demo_session',
   :secret      => '5e8e4dc631840f7c3a82864b10f24446'
}

require File.join(File.dirname(__FILE__), "controllers", "demo_controller")

DemoController.view_paths = [ File.join(File.dirname(__FILE__), "views") ]
DemoController.process_cgi if $0 == __FILE__
