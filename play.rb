require_relative 'WildAnimal'
require_relative 'Player'
require_relative 'Location'
require_relative 'Item'
#================================ Monsters ======================================================================
WildAnimal.new_animal({name: "Little Rat",	 	hp: 60,  dmg:	3,   def: 0,    exp:	20,  gold:	5})
WildAnimal.new_animal({name: "Pholcidae", 		hp: 50,  dmg:	7,   def: 3,	exp:	35,  gold:	8})
WildAnimal.new_animal({name: "Weak Skeleton",   hp: 110, dmg:	8,   def: 0,    exp:	45,  gold:	13})
WildAnimal.new_animal({name: "Young Wolf",  	hp: 100, dmg:	10,  def: 5,    exp:	50,	 gold:	15})
WildAnimal.new_animal({name: "Rotten Zombie", 	hp: 185, dmg:	5, 	 def: 10,   exp:	80,  gold:	21})
WildAnimal.new_animal({name: "Lame Bear",   	hp: 250, dmg:	15,  def: 12,   exp:	110, gold:	33})
WildAnimal.new_animal({name: "Rhino",			hp: 400, dmg:   30,  def: 60,   exp: 	480, gold: 165})
WildAnimal.new_animal({name: "Stone Giant", 	hp: 700, dmg:	70,  def: 90,  exp:	850,gold:	270})
#================================= Locations ====================================================================
Location.new_loc('Enterance')
Location.new_loc('Marvelous Forest')
Location.new_loc('Endless Plains')
Location.new_loc('Twisted Meadows')
Location.new_loc('Steep Mountains')
Location.new_loc('Frozen Valley')
#======================= Low-grade items ========================================================================
Item.new_item('Decrepit helmet', :helmet, {hitpoints: 10, defence: 5})
Item.new_item('Dulle Dagger', :weapon, {damage: 5})
#======================= Middle-grade items =====================================================================
Item.new_item('Metal Cuirass', :chest, 10, {hitpoints: 50, defence: 25})
#======================= Super items ============================================================================
Item.new_item('Shining Shield', :shield, 10, {hitpoints: 150, defence: 50, magic_defence: 30, damage: 10})
Item.new_item('Axe of Executioner', :weapon, 10, {hitpoints: 80, damage: 75})
#================================================================================================================
hero = Player.new('Hero')
#================================================================================================================
Location.change_location(:enterance)
#================================================================================================================
puts '-----test-----'

hero.equip_item('axe_of_executioner')
hero.equip_item('metal_cuirass')
hero.equip_item('shining_shield')

#100.times {hero.hunt}
puts "Write 'y' to continue."
begin
	inp = gets.chomp
	raise "You should write 'y'!!!" if inp != 'y'
	rescue => msg
	puts "Try again."
	retry
end