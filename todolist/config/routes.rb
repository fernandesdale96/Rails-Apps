Rails.application.routes.draw do
  root 'homepage#index'

  # Add routes below this line
  get '/tasks', to: 'tasks#index'
  post 'tasks', to: 'tasks#create'
  delete '/tasks/:id', to: 'tasks#destroy'
  patch '/tasks/:id/mark_complete', to: 'tasks#mark_complete'
  patch '/tasks/:id/mark_active', to: 'tasks#mark_active'
  post '/users', to: 'users#create'
  post '/sessions', to: 'sessions#create'
  get '/authenticated', to: 'sessions#authenticated'
  delete '/sessions', to: 'sessions#destroy'




  # Add routes below above line

  # Redirect all other paths to index page, which will be taken over by AngularJS
  get '*path'    => 'homepage#index'
end
