define [
  'views/base/collection_view'
  'views/projects/project_item_view'
  'models/project'
  'views/alerts/alert_view'
  'models/alert/alert'
], (CollectionView,ItemView,Project,Alert, AlertModel) ->
  'use strict'

  class ProjectCollection extends CollectionView
    templateName: 'projects/projects'
    itemView: ItemView
    listSelector: '#project_item'
    container: '#container'
    autoRender: true
    initialize: ->

      super
      @listenTo @collection, 'reset', @render
      @delegate 'click', '.new_project', @new_project
    new_project: ->
      that = @
      project = new Project( name:  @$('.new_name').val())
      project.save(wait: true, {success: () ->
        that.saved()
        that.collection.fetch()
      , error: @new_error})
    saved:->
      alert = new AlertModel()
      new Alert(model: alert)
    new_error: ->
      alert = new AlertModel(type: 'danger', text: 'Some errors occurred!')
      new Alert(model: alert)

