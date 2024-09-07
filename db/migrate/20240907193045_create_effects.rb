class CreateEffects < ActiveRecord::Migration[7.0]
  def change
    create_table :effects do |t|
      t.integer :effect_type, null: false, comment: 'Тип эффекта (добавляет, убавляет и тд)'
      t.integer :unit, null: false, comment: 'Единица эффекта (урон, защита)'

      t.timestamps
    end
  end
end
