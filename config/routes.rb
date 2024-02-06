Rails.application.routes.draw do
  resources :accs
  resources :servicios
  resources :clientes
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  get 'home/index'
  root "home#index"
end
