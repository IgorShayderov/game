# frozen_string_literal: true

class UserSerializer < BaseSerializer
  view :main do
    field :email
    field :name
    field :phone
    field :role
  end
end