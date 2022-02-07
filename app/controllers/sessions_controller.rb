class SessionsController < ApplicationController
  

  # login controller
  def create
    reset_session
    user = User.find_by(username: params[:username])
    if user
      # session[:user_id] ||= user.id
      # cookies[:user_id] = user.id
      # session[:user_id] = user.id
      session[:user_id] ||= user.id

      puts "SessionController: #{session}"
      puts "SessionController: #{user}"

      render json: user
    else
      render json: {errors: "That username does not exist"}, status: :unauthorized
    end
  end


  #logout controller
  def destroy
    session[:user_id] = nil
    head :no_content, status: :no_content
  end
  

end
