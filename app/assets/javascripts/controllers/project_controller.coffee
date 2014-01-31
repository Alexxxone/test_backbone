define [
  'controllers/base/controller'
  'models/projects'
  'views/projects/project_collection_view'
], (Controller, Projects, ProjectCollectionView) ->
  'use strict'

  class ProjectController extends Controller

    title: 'Project'

    historyURL: (params) ->
      ''

    index: () ->
      @collection = new Projects()
      @view = new ProjectCollectionView collection: @collection
      @collection.fetch()
