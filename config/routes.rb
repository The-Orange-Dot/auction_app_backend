Rails.application.routes.draw do

  get "users" => "users#index"
  get "users/:id" => "users#show"
  get "users/:id/products" => "users#show_products"
  get "users/find_buy_items/:id" => "users#find_buy_items"
  post "users" => "users#create"
  patch "users/buy_ticket/:id" => "users#buy_ticket"
  patch "users/charge_points/:id" => "users#charge_points"


  get "products" => "products#index"
  get "products/:id" => "products#show"
  get "products/seller/:id" => "products#find_seller"
  post "products" => "products#create"
  delete "products/:id" => "products#delete"
  
  

end
