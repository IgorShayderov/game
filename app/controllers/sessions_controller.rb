class SessionsController < ApplicationController
  skip_before_action :authenticate_user!

  def new; end

  def create
    user = User.find_by(login: params[:login])

    if user&.authenticate(params[:password])
      # TODO заменить на идентификатор сессии
      session[:user_id] = user.id

      redirect_to user_path(user), notice: "Successfully signed in."
    else
      flash[:alert] = "Error in login or password."

      redirect_to sign_in_path
    end
  end

  def destroy
    session.clear
    flash[:notice] = "You have been signed out."

    redirect_to root_path
  end
end
