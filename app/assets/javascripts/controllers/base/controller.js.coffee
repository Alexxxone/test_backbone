define ['chaplin', 'views/main/site-view','views/main/menu-view','models/init'], (Chaplin,SiteView,MenuView,Init) ->
  'use strict'

  class Controller extends Chaplin.Controller

    # Place your application-specific controller features here
    beforeAction: ->
      @model =  new Init
      @compose 'site', SiteView , model: @model
      @compose 'menu', MenuView , model: @model


