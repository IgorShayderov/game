# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.find_or_create_by!({
  name: 'Admin',
  email: 'test@test.com',
  phone: '+79991663333',
  password: 'Qwerty123!',
  password_confirmation: 'Qwerty123!',
  role: :admin
})

increase_damage_effect = Effect.find_or_create_by({
  effect_type: :increase,
  unit: :damage
})
increase_crittical_chance = Effect.find_or_create_by({
  effect_type: :increase,
  unit: :crittical_chance
})
increase_crttical_damage = Effect.find_or_create_by({
  effect_type: :increase,
  unit: :crittical_damage
})
increase_health = Effect.find_or_create_by({
  effect_type: :increase,
  unit: :health
})

axe_of_executioner = Item.find_or_create_by({
  name: 'Axe of Executioner',
  description: 'Legendary weapon of the executioner who has killed his own son during execution. It makes his owner incredibly strong.',
  price: 0,
  item_type: :common,
  appliance: :static,
  item_kind: :weapon,
})

ItemEffect.create!({
  item: axe_of_executioner,
  effect: increase_damage_effect,
  count: 75
})
ItemEffect.create!({
  item: axe_of_executioner,
  effect: increase_crittical_chance,
  count: 10
})
ItemEffect.find_or_create_by({
  item: axe_of_executioner,
  effect: increase_health,
  count: 80
})

makarov_pistol = Item.find_or_create_by({
  name: 'Makarov Pistol',
  description: 'Reliable and easy in maintain pistol.',
  price: 0,
  item_type: :common,
  appliance: :static,
  item_kind: :weapon,
})

ItemEffect.find_or_create_by({
  item: makarov_pistol,
  effect: increase_damage_effect,
  count: 50
})
ItemEffect.find_or_create_by({
  item: makarov_pistol,
  effect: increase_crittical_chance,
  count: 15
})
ItemEffect.find_or_create_by({
  item: makarov_pistol,
  effect: increase_crttical_damage,
  count: 100
})
