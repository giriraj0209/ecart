Rails.application.routes.draw do
  resources :catalog
  root 'catalog#new'
end
