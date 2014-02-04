define [
  'chaplin'
], (Chaplin) ->
  'use strict'

  class Collection extends Chaplin.Collection
    # Mixin a synchronization state machine
    # _(@prototype).extend Chaplin.SyncMachine

    # Place your application-specific collection features here
    Backbone.sync = ((original) ->
      (method, model, options) ->
        options.beforeSend = (xhr) ->
          xhr.setRequestHeader "X-CSRF-Token", $("meta[name='csrf-token']").attr('content')
          return
        original method, model, options
        return
    )(Backbone.sync)