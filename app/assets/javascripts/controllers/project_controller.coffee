define [
  'controllers/base/controller'
  'models/projects'
  'views/projects/project_collection_view'
  'views/main/menu-view'
  'views/users/users_collection_view'
  'models/users/users'
  'models/init'
  'views/main/site-view'
  'models/users/user'
], (Controller, Projects, ProjectCollectionView, MenuView, UsersView, UserCollection,Init,SiteView,UserModel) ->
  'use strict'

  class ProjectController extends Controller
    beforeAction: ->
      super
      console.log 'before'
      $('.left_menu li').removeClass('active')
      @model =  new Init
      @compose 'site', SiteView , model: @model
      @compose 'menu', MenuView, region: 'menu'

    title: 'Project'

    historyURL: (params) ->
      ''

    index: () ->
      $('.menu_main_page').addClass('active')
      @collection = new Projects()
      @view = new ProjectCollectionView collection: @collection, region: 'main'
      @collection.fetch()
      @collection2 = new UserCollection()
      new UsersView collection: @collection2, region: 'users'
      @collection2.fetch()

    users: ()->
      $('.menu_users').addClass('active')
      console.log 'users'
      @collection = new Projects()
      @view = new ProjectCollectionView collection: @collection, region: 'users'
      @collection.fetch()
      @collection2 = new UserCollection()
      @view2 = new UsersView collection: @collection2, region: 'main'
      @collection2.fetch()
    show_user: (params) ->
      console.log params.id
      @model = new UserModel({id:params.id })
      new UsersView model: @model, redion: 'main'
