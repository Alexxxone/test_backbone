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
      name = @$('.new_name').val()
      project = new Project( name: name)
      project.save(wait: true, {success :@saved, error: @new_error}).then =>
        @collection.add(project)
    saved: ->
      alert = new AlertModel()
      new Alert(model: alert)
    new_error: ->
      alert = new AlertModel(type: 'danger', text: 'Some errors occurred!')
      new Alert(model: alert)

