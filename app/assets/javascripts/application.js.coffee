# Require HAML Coffee templates
#= require hamlcoffee
#= require_tree ./templates

require [
  'test_app'
  'routes'
  'controllers/project_controller'
], (TestApp, routes) ->
  'use strict'

  new TestApp
    title: 'TestApp'
    routes: routes
    csrfToken: $("meta[name='csrf-token']").attr('content')
