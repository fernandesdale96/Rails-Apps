Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/users', to: 'users#create'
  post '/posts', to: 'posts#create'
  get '/posts', to: 'posts#list'
  patch '/posts/:id', to: 'posts#modify'
  delete '/posts/:id' , to: 'posts#destroy'
end
