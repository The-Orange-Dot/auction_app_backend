class UsersController < ApplicationController
  before_action :users, only: [:show, :update, :destroy]

  def index
    @users = User.all
    json_response(@users)
  end

end
