Fitgram::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => :show

  #match '/:users/:id/:upload' => "upload#index"
  #match '/:users/:id/:upload', :to => redirect('/users/id/upload/')
  #match '/:verify/:id/:index' => "verify#index"
  
  match '/users/compile' => "users#compile"
  match '/users/unzip_file' => "users#verify"
  #match '/users/import' => "users#compile"

  #match '/:controller(/:id(/:action))'
  match '/:controller(/:action(/:id))'
end
