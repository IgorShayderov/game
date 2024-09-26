class CreateItemsEffects < ActiveRecord::Migration[7.0]
  def change
    create_table :items_effects do |t|
      t.references :item, null: false, foreign_key: true, comment: 'Связь с предметом'
      t.references :effect, null: false, foreign_key: true, comment: 'Связь с эффектом'

      t.integer :count, default: 0, comment: 'Количество единиц эффекта'
      t.string :duration, default: 0, comment: 'Длительность эффекта, где 0 - постоянный'

      t.timestamps
    end
  end
end
