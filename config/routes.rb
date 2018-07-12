Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'

  resources :usuarios

  get '/login', to: 'sessoes#new'
  post '/login', to: 'sessoes#create'
  delete '/logout', to: 'sessoes#destroy'
end
