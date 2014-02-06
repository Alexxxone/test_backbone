define [
  'chaplin',
  'models/base/model'
], (Chaplin, Model) ->
  'use strict'

  class User extends Model
    urlRoot:'/people'

    parse: (response) ->
      @projects = response.projects
      console.log(@projects)
      response.user
