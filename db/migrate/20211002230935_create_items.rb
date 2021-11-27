class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :item_type, default: 'common'
      t.text :description, default: ''

      t.string :type, null: false

      t.integer :damage, default: 0
      t.integer :armor, default: 0
      t.integer :hitpoints, default: 0

      t.integer :price, default: 0

      t.timestamps
    end
  end
end
