Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'


  resources :usuarios
  resources :disciplinas do
    resources :topicos
  end

  get '/login', to: 'sessoes#new'
  post '/login', to: 'sessoes#create'
  get '/logout', to: 'sessoes#destroy'
  delete '/logout', to: 'sessoes#destroy'

  # Rotas adicionadas apenas para definir interação de usuário
  get '/conteudo', to: 'topicos#conteudo'
  get '/tarefas', to: 'topicos#tarefas'

end
