User.find_or_create_by({
  email: 'flashmob123@gmail.com',
}) do |user|
  user.name = 'Admin'
  user.phone = '+79991663333'
  user.password = 'Qwerty123!'
  user.password_confirmation = 'Qwerty123!'
  user.role = :admin
end

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
}) do |item|
  item.description = 'Legendary weapon of the executioner who has killed his own son during execution. It makes his owner incredibly strong.'
  item.price = 0
  item.item_type = :common
  item.appliance = :static
  item.item_kind = :weapon
end

ItemsEffect.find_or_create_by({
  item: axe_of_executioner,
  effect: increase_damage_effect,
}) do |effect|
  effect.count = 75
end
ItemsEffect.find_or_create_by({
  item: axe_of_executioner,
  effect: increase_crittical_chance,
}) do |effect|
  effect.count = 10
end
ItemsEffect.find_or_create_by({
  item: axe_of_executioner,
  effect: increase_health,
}) do |effect|
  effect.count = 80
end

makarov_pistol = Item.find_or_create_by({
  name: 'Makarov Pistol',
}) do |item|
  item.description = 'Reliable and easy in maintain pistol.'
  item.price = 0
  item.item_type = :common
  item.appliance = :static
  item.item_kind = :weapon
end

ItemsEffect.find_or_create_by({
  item: makarov_pistol,
  effect: increase_damage_effect,
}) do |effect|
  effect.count = 50
end
ItemsEffect.find_or_create_by({
  item: makarov_pistol,
  effect: increase_crittical_chance,
}) do |effect|
  effect.count = 15
end
ItemsEffect.find_or_create_by({
  item: makarov_pistol,
  effect: increase_crttical_damage,
}) do |effect|
  effect.count = 100
end
