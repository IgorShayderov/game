class CharacterAttribute < ApplicationRecord
  belongs_to :character
  belongs_to :attribute
end
