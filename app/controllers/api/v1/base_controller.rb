# frozen_string_literal: true
module Api
  module V1
    class BaseController < ApplicationController
      before_action :authorize_access_request!

      def current_user
        @current_user ||= User.find(payload['user_id'])
      end
    end
  end
end
