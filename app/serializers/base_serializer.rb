# frozen_string_literal: true

class BaseSerializer < Blueprinter::Base
  identifier :id

  field :created_at
  field :updated_at
end