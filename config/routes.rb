Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'usuarios#index'
  get 'index' => 'usuarios#index'
  resources :usuarios
end
