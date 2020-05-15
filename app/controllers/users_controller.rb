class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
     #@user = User.new(user_params)
     @user = User.new(username: params[:username], password: params[:password], email: params[:email])
     if @user.save
      redirect_to new_users_path
     else
      render :new
     end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :email)
  end
end
