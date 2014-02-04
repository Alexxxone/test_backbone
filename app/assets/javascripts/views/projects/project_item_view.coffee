define [
  'views/base/view'
  'views/alerts/alert_view'
  'models/alert/alert'
], (View, Alert, AlertModel) ->
  'use strict'

  class ProjectView extends View
    templateName: 'projects/project'
    tag: false
    autoRender: true
    initialize: ->
      @delegate 'click', '.project_save', @update_project
      @delegate 'click', '.delete_project', @delete_project
      @delegate 'click', '.open_edit_box', @toggle_edit_box
      @delegate 'click', '.cancel', @toggle_edit_box
      @listenTo @model, 'change', @render
    update_project: ->
      name = $(@.el).find('.name').val()
      @model.set({name: name})
      @model.save()
      alert = new AlertModel(type: 'success', text: 'Project Was Successfully Updated!')
      new Alert(model: alert)
    delete_project: ->
      that = @
      @$('.col-lg-12.well').slideUp 'slow', () ->
        alert = new AlertModel(type: 'warning', text: 'Project Was Successfully Deletet!')
        new Alert(model: alert)
        that.model.destroy()
    toggle_edit_box: ->
      @$('.input-group').toggleClass('hide')
