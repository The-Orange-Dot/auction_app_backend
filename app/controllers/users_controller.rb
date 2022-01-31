class UsersController < ApplicationController
  # before_action :users, only: [:show, :update, :destroy]

  def index
    render json: User.all.as_json(include: :products), except: [:password]
  end

  def show
    render json: User.all.find(params[:id]), include: [:products]
  end

  def create
    newParams = params[:user_id] - 1
    User.create(newParams)
  end

  def show_products
    render json: User.all.find(params[:id]).products.as_json
  end

  def charge_points
    if (params[:points_id] == 1 && params[:charge] == 500) || (params[:points_id] == 2 && params[:charge] == 1000) || (params[:points_id] == 3 && params[:charge] == 5000)
      user = User.all.find(params[:id])
      user.update(points: user.points + params[:charge])
    else
      puts "Invalid id and points"
    end
  end

  def buy_ticket
    user = User.all.find(params[:id])
    product = Product.all.find(params[:product_id])
    ticket_value = product.price / product.tickets

    buyers = product.buyers == nil ? "#{user.id}" : "#{product.buyers}, #{user.id}"
    split_buyers = buyers.split(", ")
    split_buyers_int = split_buyers.map{|i| i.to_i}
    randNumGen = rand(split_buyers_int.length() - 1)
    winner = split_buyers_int[randNumGen]

    if user.points > ticket_value && product.finished == false
      user.update(points: user.points - ticket_value)
      product.update(ticketsRemaining: product.ticketsRemaining - 1, buyers: buyers)
      product.ticketsRemaining == 0 ? product.update(finished: 1, winner: winner) : nil
      render json: product
    elsif user.points < ticker_value
      puts "Not enough points"
    else 
      puts "This product is finished!"
    end
  end

  def find_buy_items
    user = User.all.find(params[:id])
    product = Product.where(buyers: user.id)
    render json: product, only: [:username, :picture, :seller_rating, :verified]
  end

end
