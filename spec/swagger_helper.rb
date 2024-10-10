# frozen_string_literal: true

require 'rails_helper'

RSpec.configure do |config|
  config.openapi_root = Rails.root.join('swagger').to_s
  config.openapi_specs = YAML.safe_load(Rails.root.join('spec/swagger_docs.yml').read)&.with_indifferent_access
  config.openapi_format = :yaml
  config.rswag_dry_run = false

  # Автоматически генерировать примеры ответов
  config.after type: :request do |example|
    # when head: :no_content
    next if response.body.blank?

    current_description = example.metadata[:response][:description]
    example.metadata[:response][:content] ||= {}
    responses = example.metadata[:response][:content]

    response_json = begin
      JSON.parse(response.body, symbolize_names: true)
    rescue StandardError
      {}
    end
    next if response_json.blank?

    responses['application/json'] ||= { examples: {} }
    responses['application/json'][:examples][current_description] =
      { value: response_json, summary: current_description }
  end
end
