Rails.application.routes.draw do
  resources :users, only: [:index, :show, :create]
  resources :products

  get "users/:id/products" => "users#show_products"
  get "users/find_buy_items/:id" => "users#find_buy_items"
  patch "users/buy_ticket/:id" => "users#buy_ticket"
  patch "users/charge_points/:id" => "users#charge_points"

  get "products/seller/:id" => "products#find_seller"
  
end
