class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[new create]

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_path, notice: "User have been created. You can log in now."
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:login, :email, :name, :password, :password_confirmation)
  end
end
