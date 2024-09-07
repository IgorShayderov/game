class Effect < ApplicationRecord
  enum effect_type: {
    increase: 0,
    decrease: 1
  }
  enum unit: {
    damage: 0,
    armour: 1,
    crittical_chance: 2,
    health: 3
  }
end
