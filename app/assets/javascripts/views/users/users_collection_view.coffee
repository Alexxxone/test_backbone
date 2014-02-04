define [
  'views/base/collection_view'
  'views/users/user_item_view'
], (CollectionView,ItemView) ->
  'use strict'

  class UsersCollection extends CollectionView
    templateName: 'users/users'
    itemView: ItemView
    listSelector: '#users_items'
    region: 'users'
    autoRender: true
    initialize: ->
      super
      @listenTo @collection, 'reset', @render

