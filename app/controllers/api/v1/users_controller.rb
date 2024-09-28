module Api
  module V1
    class UsersController < Api::BaseController
      before_action :find_user, only: %i[show update destroy]

      def show
        render json: UserSerializer.render(user)
      end

      def create
        user = User.new(user_params)

        if user.save
          render json: UserSerializer.render(user), status: :created
        else
          render_error(user.errors)
        end
      end

      def update
        if @user.update(user_params)
          render json: UserSerializer.render(user)
        else
          render_error(@user.errors)
        end
      end

      def destroy
        status = @user.destroy ? :ok : :unprocessable_entity
        head status
      end

      private

      def find_user
        @user = User.find(params[:id])
      end

      def user_params
        params.require(:user).permit(%i[name password password_confirmation phone role email])
      end
    end
  end
end
