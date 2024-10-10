# frozen_string_literal: true

class CharacterPeculiarity < ApplicationRecord
  belongs_to :character
  belongs_to :peculiarity
end
