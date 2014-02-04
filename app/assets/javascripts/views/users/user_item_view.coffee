define [
  'views/base/view'
  'lib/utils'
], (View,utils) ->
  'use strict'

  class UserView extends View
    templateName: 'users/user'
    tag: false
    autoRender: true
    initialize: ->
      @delegate 'click', '.col-lg-12.well', @show
    show:->
      utils.redirectTo url: "/users/#{@model.id}"