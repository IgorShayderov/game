class ApplicationController < ActionController::API
  before_action :authenticate_user!

  helper_method :current_user

  private

  def authenticate_user!
    unless current_user
      redirect_to sign_in_path
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def signed_in?
    current_user.present?
  end
end
