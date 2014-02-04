define [
  'views/base/view'
  'lib/utils'
], (View, AlertModel) ->
  'use strict'

  class SiteView extends View
    container: 'body'
    id: 'site-container'
    autoRender: true
    regions:
      menu: '#menu-container'
      main: '#page-container'
      users: '#user-container'
    templateName: 'main/site'
    initialize: ->
      @model.fetch
        success: (res)->
          $('.user_email').text(res.get('email'))