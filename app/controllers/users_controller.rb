class UsersController < ApplicationController
  def login
    @user = User.find_by_login(params[:login])
    render json: @user
  end
end
