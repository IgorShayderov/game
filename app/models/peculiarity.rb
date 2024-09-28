class Peculiarity < ApplicationRecord
  enum kind: {
    strength: 0,
    agility: 1,
    intelligence: 2,
    endurance: 3
  }
end
