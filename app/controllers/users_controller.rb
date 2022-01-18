class UsersController < ApplicationController
  # before_action :users, only: [:show, :update, :destroy]

  def index
    render json: User.all.as_json(include: :products)
  end

  def show
    render json: User.all.find(params[:id]).as_json(include: :products)
  end

  def create
    User.create(params)
  end

  def change_points
    user = User.all.find[params[:id]]
    user.update(
      points: params[:points]
    )
  end

  def show_products
    render json: User.all.find(params[:id]).products.as_json
  end

end
