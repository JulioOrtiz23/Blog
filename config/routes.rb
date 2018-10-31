Rails.application.routes.draw do

  devise_for :users

  #This is the default route 
  root :to => 'home#index'
  
  #These are the routes of the publications
  resources :publications

  get 'nueva_publicacion' => 'publications#new' , as: 'nueva_publicacion'
  get 'publicaciones' => 'publications#index', as: 'publicaciones'
  get 'muro' => 'publications#wall', as: 'muro'

  #These are the routes of the comments
  resources :comments

  get 'nuevo_comentario' => 'comments#new' , as: 'nuevo_comentario'
  get 'comentarios' => 'comments#index', as: 'comentarios'
  get 'todos_comentarios' => 'comments#todos', as: 'todos_comentarios'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
