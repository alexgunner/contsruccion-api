Rails.application.routes.draw do
  resources :carts
  resources :reservations
  resources :product_in_storehouses
  resources :storehouses
  resources :clients
  resources :products
  resources :manufacturers
  resources :providers
  resources :subcategories
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
