Rails.application.routes.draw do
  resources :buyer_reviews, only: [:create, :index]
  resources :seller_reviews, only: [:create, :index]
  resources :users, only: [:create, :user, :update]
  resources :products, except: [:update, :show]
  resource :sessions, only: [:create, :destroy]

  post "users/buy_ticket/:id" => "users#buy_ticket"
  post "users/charge_points/:id" => "users#charge_points"
  post "users/edit_info/:id" => "users#update"

  get "user" => "users#show"

  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"
  
end
