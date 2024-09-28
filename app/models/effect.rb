class Effect < ApplicationRecord
  enum effect_type: {
    increase: 0,
    decrease: 1
  }, _default: :increase
  enum unit: {
    damage: 0,
    armour: 1,
    crittical_chance: 2,
    crittical_damage: 3,
    health: 4
  }, _default: :damage
end
