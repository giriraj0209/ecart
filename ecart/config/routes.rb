Rails.application.routes.draw do

  resources :catalog
  resources :product
  root 'product#index'
  post 'products', to: 'product#create'
end
