define [
  'chaplin',
  'models/base/collection'

], (Chaplin, Collection) ->
  'use strict'

  class Projects extends Collection
    url: '/projects'
