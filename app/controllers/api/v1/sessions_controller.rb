class SessionsController < Api::V1::BaseController
  skip_before_action :authenticate_user!

  def create
    user = User.find_by(login: params[:login])

    if user&.authenticate(params[:password])
      # TODO заменить на идентификатор сессии
      session[:user_id] = user.id
    end
  end

  def destroy
    session.clear
  end
end
