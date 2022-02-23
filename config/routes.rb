Rails.application.routes.draw do
  resources :users, only: [:create, :user, :update]
  resources :products, except: [:update, :show]
  resource :sessions, only: [:create, :destroy]

  post "users/buy_ticket/:id" => "users#buy_ticket"
  patch "users/charge_points/:id" => "users#charge_points"
  get "user" => "users#show"

  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"
  
end
