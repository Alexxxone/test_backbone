define [
  'chaplin',
  'models/base/model'
], (Chaplin, Model) ->
  'use strict'

  class Project extends Model
    urlRoot: '/projects/:id'

