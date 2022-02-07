class ApplicationController < ActionController::API
  protect_from_forgery = false
  
  include ActionController::Cookies
  include Response
  include ExceptionHandler

end

