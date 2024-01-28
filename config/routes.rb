# config/routes.rb

Rails.application.routes.draw do
  resources :usuarios
  resources :combos do
    resources :ofertas, only: [:new, :create, :destroy]
  end

  root 'root#index'
end

