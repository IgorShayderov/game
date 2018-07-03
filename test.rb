require_relative 'WildAnimal.class'
require_relative 'Player.class'
require_relative 'Location.class'

#================================================================================================================
# 										name						hp		dmg1	dmg2	exp 	gold1	gold2
little_rat =          WildAnimal.new("Little Rat",       			40, 	1,	 	5, 		5, 		1,		2)
pholcidae =			  WildAnimal.new("Pholcidae", 					50, 	3, 		5, 		8, 		2, 		3)
young_wolf = 		  WildAnimal.new("Young Wolf",   				100, 	10, 	12, 	15,		5, 		6)
rotten_zombie =		  WildAnimal.new("Rotten Zombie",	 			125, 	14, 	17, 	20, 	8,		9)
lame_bear =			  WildAnimal.new("Lame Bear",   				250, 	20, 	22, 	30, 	10, 	15)

enterance = Location.new('Enterance')
marvelous_forest = Location.new('Marvelous Forest')
endless_plains = Location.new('Endless Plain')
twisted_meadow = Location.new('Twisted Meadows')
steep_mountains = Location.new('Steep Mountains')
frozen_walley = Location.new('Frozen Valley')

player = Player.new('Hero')
#================================================================================================================
Location.change_location(enterance)
#================================================================================================================
puts '-----test-----'