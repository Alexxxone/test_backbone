define [
  'views/base/collection_view'
  'views/projects/project_item_view'
], (CollectionView,ItemView) ->
  'use strict'

  class ProjectCollection extends CollectionView
    templateName: 'projects/projects'
    itemView: ItemView
    listSelector: '#project_item'
    container: '#container'
    autoRender: true
