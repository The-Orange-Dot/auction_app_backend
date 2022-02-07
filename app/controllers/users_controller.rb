class UsersController < ApplicationController
  before_action :show

  # def index 
  #   render json: User.all, include: [:products]
  # end

  #WHYYYYYYY NO WORRRRK
  def show
    puts "UserController: #{session}"
    puts "UserControllerCookies: #{session[:user_id]}"
    user = User.find_by(id: session[:user_id])
    # user = User.find_by(id: params[:id])
    if user
      render json: user, include: [:products]
    else
      render json: {error: "User could not be found."}
    end
  end

  def create
    user = User.create!(user_params)
    render json: user
  rescue ActiveRecord::RecordInvalid => invalid
    render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
  end

  def charge_points
    if (params[:points_id] == 1 && params[:charge] == 500) || (params[:points_id] == 2 && params[:charge] == 1000) || (params[:points_id] == 3 && params[:charge] == 5000)
      user = User.find(params[:id])
      render json: user.update(points: user.points + params[:charge])
    else
      puts "Invalid id and points"
    end
  end

  def buy_ticket
    user = find_user
    product = Product.all.find(params[:product_id])
    ticket_value = product.price / product.tickets

    buyers = product.buyers == nil ? "#{user.id}" : "#{product.buyers}, #{user.id}"
    split_buyers = buyers.split(", ")
    split_buyers_int = split_buyers.map{|i| i.to_i}
    randNumGen = rand(split_buyers_int.length() - 1)
    winner = split_buyers_int[randNumGen]

    if user.points > ticket_value && product.finished == false
      user.update(points: user.points - ticket_value, tickets_bought: user.tickets_bought + 1)
      product.update(ticketsRemaining: product.ticketsRemaining - 1, buyers: buyers)
      product.ticketsRemaining == 0 ? product.update(finished: 1, winner: winner) : nil
      render json: Product.all, include: [:user]
    elsif user.points < ticket_value
      puts "Not enough points"
    else 
      puts "This product is finished!"
    end
  end

  private

  def find_user
    User.find_by(id: params[:id])
  end

  def user_params
    params.permit(:firstName, :lastName, :email, :username, :password, :dob)
  end

end
