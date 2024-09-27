# frozen_string_literal: true

module Api
  class BaseController < ApplicationController
    include ApiErrors

    before_action :authorize_access_request!

    def current_user
      @current_user ||= User.find(payload['user_id'])
    end
  end
end