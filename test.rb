require_relative 'Item'
require_relative 'Player'
require 'minitest/autorun'

class TestLocation < Minitest::Test

# test that item add stats
	def test_assert_item_add_stats
		human = Player.new('Human')
		Item.new_item('Pike', :weapon, stength_required = 0, {damage: 5})
		default_stats = human.stats[:damage]
		human.equip_item('pike')
		p "Human new stats is #{human.stats[:damage]}."
		p "Human default_stats is #{default_stats}."
		assert(human.stats[:damage] != default_stats)
	end
end