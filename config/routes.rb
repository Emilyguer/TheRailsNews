Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
   }
   

  
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
