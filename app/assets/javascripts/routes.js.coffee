define ->
  'use strict'

  # The routes for the application. This module returns a function.
  # `match` is the match method of the Chaplin.Router.
  (match) ->

    match '', 'project#index'
    match 'people', 'project#users'
    match 'people/:id', {controller: 'project', action: 'show_user' , constraints: {id: /^\d+$/} }

