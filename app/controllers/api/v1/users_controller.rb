module Api
  module V1
    class UsersController < Api::V1::BaseController
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
        params.require(:user).permit(:name, :email, :name, :password, :password_confirmation)
      end
    end
  end
end
