class SessionsController < ApplicationController
  skip_before_action :authenticate_user!

  def new; end

  def create
    user = User.find_by(login: params[:login])

    if user&.authenticate(params[:password])
      session[:user_id] = user.id

      redirect_to user_path(user), notice: "Successfully signed in"
    else
      flash[:alert] = "Error in login or password"

      render :new
    end
  end

  def destroy
    flash[:notice] = "You have been signed out"
  end
end
