class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
     @user = User.new(user_params)
     if @user.save
      redirect_to new_users_path
     else
      render :new
     end
  end

  def update
    @user =  User.find(params[:id])
    if @user.update(user_params)
      redirect_to edit_users_path
    else
      render :edit
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :email)
  end
end
