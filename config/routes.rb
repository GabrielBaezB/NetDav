Rails.application.routes.draw do
  resources :promocions
  resources :contrato_combo_paquetes
  resources :contrato_servicios
  resources :clientes
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  get 'home/index'
  root "home#index"
end
