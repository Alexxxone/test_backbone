define [
  'controllers/base/controller'
  'models/projects'
  'views/projects/project_collection_view'
  'views/main/menu-view'
  'models/users/users'
  'views/users/users_collection_view'
  'models/init'
  'views/main/site-view'
  'models/users/user'
  'views/users/user_item_view'
], (Controller, Projects, ProjectCollectionView, MenuView, UserCollection,UserCollectionView,Init,SiteView,UserModel,UserView) ->
  'use strict'

  class ProjectController extends Controller
    beforeAction: ->
      super
      $('.left_menu li').removeClass('active')

    title: 'Project'

    historyURL: (params) ->
      ''

    index: () ->
      $('.menu_main_page').addClass('active')
      @collection = new Projects()
      @view = new ProjectCollectionView collection: @collection, region: 'main'
      @collection.fetch()
      @collection2 = new UserCollection()
      new UserCollectionView collection: @collection2, region: 'users'
      @collection2.fetch()
    users: ()->
      $('.menu_users').addClass('active')
      @collection = new Projects()
      @view = new ProjectCollectionView collection: @collection, region: 'users'
      @collection.fetch()
      @collection2 = new UserCollection()
      @view2 = new UserCollectionView collection: @collection2, region: 'main'
      @collection2.fetch()
    show_user: (params) ->
      $('.menu_users').addClass('active')
      @model = new UserModel(id: params.id )
      @model.fetch
        success: (resp)->
          new UserView model: resp, region: 'main'
          collection = new Projects()
          collection.push(resp.projects)
          new ProjectCollectionView collection: collection , region: 'users'