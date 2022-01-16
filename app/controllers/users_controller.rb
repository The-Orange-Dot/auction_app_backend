class UsersController < ApplicationController
  
  def show
    render json: User.all  
  end

  def create
    user = User.create(user_params)
  end

  def update
    user = User.find(param[:id])
    user.update_attributes(user_params)
    render json: user
  end

  def delete
    User.find(params[:id]).destroy
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :password, :email, :date_of_birth, :address)
  end

end
