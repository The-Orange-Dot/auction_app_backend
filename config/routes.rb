Rails.application.routes.draw do

  get "users" => "users#index"
  get "users/:id" => "users#show"
  get "users/:id/products" => "users#show_products"
  post "users" => "users#create"


  get "products" => "products#index"
  get "products/:id" => "products#show"
  post "products" => "products#create"
  delete "products/:id" => "products#delete"
  

  #Refactor this and combine the together in one action!
  patch "products/take_ticket/:id" => "products#take_ticket"
  patch "users/change_points/:id" => "users#change_points"

end
