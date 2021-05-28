class UsersController < ApplicationController
  skip_before_action :authenticate_user!

  def show

  end

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

  private

  def user_params
    params.require(:user).permit(:login, :email, :name, :password, :password_confirmation)
  end
end
