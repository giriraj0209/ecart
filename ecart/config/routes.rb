Rails.application.routes.draw do

  get 'cart/create'

  get 'cart/update'

  get 'cart/destroy'

  resources :catalog
  resources :product
  root 'product#index'
  post 'products', to: 'product#create'
end
