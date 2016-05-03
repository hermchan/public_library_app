class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    user_params = params.require(:user).permit(:first_name, :last_name, :email, :password)
    @user = User.new(user_params)

    redirect_to root_path
  end

  def show
    @user = User.find_by_id(parmas[:id])
  end

  

end
