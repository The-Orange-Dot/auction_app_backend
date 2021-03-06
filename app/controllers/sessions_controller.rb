class SessionsController < ApplicationController
  

  # login controller
  def create
    user = User.find_by(username: params[:username])
    if user&.authenticate(params[:password])
      cookies.encrypted[:user] = {
        value: user.id,
        domain: :all,
        expires: 1.day
      }
      render json: { cookies: cookies.to_hash }, status: :ok
    else
      render json: {errors: "Username or password is not correct"}, status: :unauthorized
    end
  end


  #logout controller
  def destroy
    session[:user_id] = nil
    head :no_content, status: :no_content
  end
  

end
