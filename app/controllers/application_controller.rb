class ApplicationController < ActionController::API
  include Pundit::Authorization
  include JWTSessions::RailsAuthorization
  rescue_from JWTSessions::Errors::Unauthorized, with: :not_authorized

  def not_authorized
    render json: { error: 'Not authorized' }, status: :unauthorized
  end
end
