define [
  'chaplin',
  'models/base/collection'
], (Chaplin, Collection) ->
  'use strict'

  class Users extends Collection
    url: '/users'

