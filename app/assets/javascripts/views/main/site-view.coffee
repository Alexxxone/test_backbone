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
      console.log 'site view'
      @model.fetch()
        success: (res)->
          console.log res
          $('.user_email').text(res.get('email'))