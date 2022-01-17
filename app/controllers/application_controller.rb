class ApplicationController < ActionController::API
  #This is for testing purposes. DELETE THIS IF YOU DEPLOY!!
  # protect_from_forgery with :exception 
  include Response
  include ExceptionHandler
end

