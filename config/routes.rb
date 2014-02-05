TestApp::Application.routes.draw do
  root :to => 'projects#index'
  devise_for :users, :sign_out_via => [ :delete, :get ]
  resources :projects, :defaults => { :format => 'json' }
  resources :init , :defaults => { :format => 'json' }
  get '/people' => 'users#index'
  get '/people/:id' => 'users#show'
end
