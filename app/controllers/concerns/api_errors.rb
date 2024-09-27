# frozen_string_literal: true

module ApiErrors
  extend ActiveSupport::Concern

  included { rescue_from(StandardError) { handle_exception(_1) } }

  private

  def handle_exception(exc)
    case exc
    when ActiveRecord::RecordNotFound
      render_error(I18n.t('api.errors.not_found'), :not_found)
    when JWTSessions::Errors::Expired, JWTSessions::Errors::Unauthorized
      render_error(I18n.t('api.errors.unauthorized'), :unauthorized)
    when Pundit::NotAuthorizedError
      render_error(I18n.t('api.errors.not_allowed'), :forbidden)
    end
  end

  def render_error(error, status = :unprocessable_entity)
    render json: { error: }, status:
  end
end