Rails.application.routes.draw do
  root 'index#home'
  resources :personas
  resources :usuarios

  #inicio sesion
  get '/login', to: 'session#new'
  #post 'login#create'
  #delete 'logout#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
