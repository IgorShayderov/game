class UsersController < Api::V1::BaseController
  skip_before_action :authenticate_user!, only: %i[new create]

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    @user.save
  end

  def update

  end

  private

  def user_params
    params.require(:user).permit(:login, :email, :name, :password, :password_confirmation)
  end
end
