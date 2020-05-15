class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
     @user = User.new(username: params[:user][:username], password: params[:user][:password], email: params[:user][:email])

     if @user.save
      redirect_to new_users_path
     else 
      render template: 'users/new'
     end
  end
end
