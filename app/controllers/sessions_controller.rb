class SessionsController < ApplicationController
  

  # login controller
  def create
    user = User.find_by(username: params[:username])
    if user
      cookies.signed[:user_id] ||= user.id
      session[:user_id] ||= 0
      session[:user_id] = user.id

      puts "SessionController: #{session}"
      puts "SessionController: #{session[:user_id]}"
      puts "SessionController: #{user}"

      render json: { session: session, cookies: cookies.to_hash }, status: :ok
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
