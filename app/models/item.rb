# frozen_string_literal: true
#
class Item < ApplicationRecord
  enum item_type: {
    common: 0,
    quest: 1
  }
  enum appliance: {
    static: 0,
    consumable: 1,
    temporary: 2
  }
  enum item_kind: {
    weapon: 0,
    sub_weapon: 1,
    armour: 2
  }

  has_many :item_effects
  has_many :effects, through: :item_effects
  has_many :images, as: :imageable

  validates :name, presence: true, uniqueness: true
end
