define [
  'views/base/view'
], (View) ->
  'use strict'

  class ProjectView extends View
    templateName: 'projects/project'
    tag: false
    autoRender: true
    initialize: ->
      @delegate 'click', '.project_save', @update_project
      @listenTo @model, 'change:name', @render
    update_project: ->
      name = $(@.el).find('.name').val()
      @model.set({name: name})
      @model.save({wait: true})
