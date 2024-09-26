# frozen_string_literal: true

class ItemsEffect < ApplicationRecord
  belongs_to :item
  belongs_to :effect
end
