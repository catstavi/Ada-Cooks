class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    user = User.find_by(id: params[:id])
    unless user == current_user
      redirect to root_path, notice: "Not authorized"
    end
    @recipes = current_user.recipes
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
