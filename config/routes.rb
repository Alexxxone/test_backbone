TestApp::Application.routes.draw do
  root :to => 'projects#index'
  devise_for :users, :defaults => { :format => 'json' }
  resources :projects, :defaults => { :format => 'json' }
  resources :init
  get 'users' => 'users#index'
  get 'users/:id' => 'users#show'
end
