class AddTierToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :tier, :integer, default: 0, comment: 'Уровень предемета (обычный, легендарный и тд)'
  end
end
