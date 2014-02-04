define [
  'chaplin',
  'models/base/model'
], (Chaplin, Model) ->
  'use strict'

  class User extends Model
    url: '/users/:id'
