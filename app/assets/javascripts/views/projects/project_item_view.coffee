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
      @delegate 'click', '.delete_project', @delete_project
      @delegate 'click', '.open_edit_box', @toggle_edit_box
      @delegate 'click', '.cancel', @toggle_edit_box
      @listenTo @model, 'change', @render
    update_project: ->
      name = $(@.el).find('.name').val()
      @model.set({name: name})
      @model.save()
    delete_project: ->
      console.log '@model'
      console.log @model
      that = @
      @$('.col-lg-12.well').slideUp 'slow', () ->
        that.model.destroy()
    toggle_edit_box: ->
      @$('.input-group').toggleClass('hide')