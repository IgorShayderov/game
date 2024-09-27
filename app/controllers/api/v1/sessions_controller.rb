module Api
  module V1
    class SessionsController < Api::BaseController
      skip_before_action :authorize_access_request!, only: %i[create update]

      def create
        user = User.find_by(email: params[:email])

        unless user&.authenticate(params[:password])
          raise JWTSessions::Errors::Unauthorized
        end

        payload = { user_id: user.id }
        session = JWTSessions::Session.new(
          payload:,
          refresh_payload: payload,
          refresh_by_access_allowed: true
        )

        render json: session.login
      end

      def update
        session = JWTSession::Session.new(:payload)
        render json: session.refresh(found_token)
      end

      def destroy
        session = JWTSessions::Session.new(payload:)
        session.flush_by_access_payload
        head :ok
      end
    end
  end
end
