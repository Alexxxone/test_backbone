require [
  'test_app'
  'routes'
  'controllers/project_controller'
], (TestApp, routes) ->
  'use strict'

  new TestApp
    title: 'TestApp'
    routes: routes
