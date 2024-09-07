# frozen_string_literal: true

class ItemEffect < ApplicationRecord
  belongs_to :item
  belongs_to :effect
end
