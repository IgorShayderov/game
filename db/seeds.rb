# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!({
  name: 'Admin',
  email: 'test@test.com',
  phone: '+79991663333',
  password: 'Qwerty123!',
  password_confirmation: 'Qwerty123!',
  role: :admin
})

increase_damage_effect = Effect.create!({
  effect_type: :increase,
  unit: :damage
})
increase_crittical_chance = Effect.create!({
  effect_type: :increase,
  unit: :crittical_chance
})
increase_health = Effect.create!({
  effect_type: :increase,
  unit: :health
})

axe_of_executioner = Item.create!({
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
ItemEffect.create!({
  item: axe_of_executioner,
  effect: increase_health,
  count: 80
})


# Item.newItem({name: "Makarov Pistol", type: "weapon", damage: 50, critChance: 15, critDamage: 100, url:"./images/items/weapon/MakarovPistol.png", description: "Reliable and easy in maintain pistol."});
# Item.newItem({name: "Iron Axe", type: "weapon", damage: 7, url:"./images/items/weapon/IronAxe.png", description: "Simple weapon. Low damage."});
# //armor
# Item.newItem({name: "Decrepit helmet", type: "helmet", hitpoints: 10, defence: 5});
# Item.newItem({name: "Dulle Dagger", type: "weapon", damage: 5});
# Item.newItem({name: "Metal Cuirass", type: "armor", hitpoints: 50, defence: 25});
# Item.newItem({name: "Shining Shield", type: "shield", hitpoints: 150, defence: 50, magicDefence: 30, damage: 10});
