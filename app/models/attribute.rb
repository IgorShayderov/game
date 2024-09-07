class Attribute < ApplicationRecord
  enum attribute_type: {
    strength: 0,
    agility: 1,
    intelligence: 2,
    endurance: 3
  }
end
