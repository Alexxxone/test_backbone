define [
  'views/base/view'
], (View) ->
  'use strict'

  class AlertView extends View
    container: 'body'
    templateName: 'alerts/alert'
    tag: false
    autoRender: true
    containerMethod: 'prepend'
    initialize: ->
      super
      @delegate 'click', '.close', @close
      @timer()
    close: ->
      @model.dispose()
    timer: ->
      that = @
      setTimeout ()->
        @$('.alert').slideUp 'slow', () ->
          that.model.dispose()
      , 5000