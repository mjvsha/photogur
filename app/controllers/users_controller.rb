class UsersController < ApplicationController

def new
  @user = User.new
end

def create
  @user = User.new
  @user.email = params[:user][:email]
  @user.password = params[:user][:password]
  @user.save

  flash[:notice] ="Successfully created..."
  redirect_to pictures_path
end


end
