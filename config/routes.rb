TestApp::Application.routes.draw do
  root :to => 'projects#index'
  devise_for :users
  resources :projects, :defaults => { :format => 'json' }
  resources :init , :defaults => { :format => 'json' }
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'
end
