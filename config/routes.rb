  Rails.application.routes.draw do
    
    resources :news  do
      resources :comments, only: [:create]
    end
    
    #devise

    devise_for :users


    
  #vistas estaticas
    
  get 'home', to: 'pages#home', as: 'home'
  get 'term', to: 'pages#term', as: 'term'
  get 'privacy', to: 'pages#privacy', as: 'privacy'
  get 'copyright', to: 'pages#copyright', as: 'copyright'
  
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    # Defines the root path route ("/")
  #ruta raiz
  root "pages#home"
end
