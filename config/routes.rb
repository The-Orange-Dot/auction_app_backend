Rails.application.routes.draw do
  resources :users, only: [:index, :create, :user]
  resources :products, except: [:update]

  patch "users/buy_ticket/:id" => "users#buy_ticket"
  patch "users/charge_points/:id" => "users#charge_points"
  
end
