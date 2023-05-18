class UsersController < ApplicationController
  # before_action :authenticate_user!
  def index
    @users = User.all
    render json: {
      status: {code: 200, message: 'users fetched sucessfully.'},
      data: UsersSerializer.new(@users).serializable_hash[:data]
    }
  end
end
