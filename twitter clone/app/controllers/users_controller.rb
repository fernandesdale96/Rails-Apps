class UsersController < ApplicationController
  def create
    @user = User.new(username: params[:user][:username], password: params[:user][:password], email: params[:user][:email])
    if(@user.save)
      render 'users/create'
    else
      render json: {
        success: false
      }
    end
  end
end
