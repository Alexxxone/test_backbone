define [
  'views/base/view'
  'lib/utils'
], (View, utils) ->
  'use strict'

  class MenuView extends View
    region: 'menu'
    templateName: 'main/menu'
    initialize: ->
      console.log 'menu VIEW'
      @delegate 'click', '.menu_main_page', @home
      @delegate 'click', '.menu_users', @settings
    home: ->
      utils.redirectTo url: '/'
    settings: ->
      utils.redirectTo url: '/users'