class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    User.create(user_params)
    # redirect_to action: index
  end
  
  def destroy
    user = User.find(params[:id])
    user.destroy
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :age)
  end
end
