define [
  'chaplin',
  'models/base/model'
], (Chaplin, Model) ->
  'use strict'

  class Alert extends Model
    url: '/'
    defaults:
      "type":  "success"
      "text":  "Successfully saved!"


