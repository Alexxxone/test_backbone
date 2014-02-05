define [
  'views/base/view'
  'lib/utils'
], (View, utils) ->
  'use strict'

  class MenuView extends View
    region: 'menu'
    templateName: 'main/menu'
    initialize: ->
      @delegate 'click', '.menu_main_page', @home
      @delegate 'click', '.menu_users', @users
    home: ->
      utils.redirectTo url: '/'
    users: ->
      utils.redirectTo url: '/users'