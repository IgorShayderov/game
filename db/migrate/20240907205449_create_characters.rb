class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name, null: false, comment: 'Имя персоонажа'
      t.integer :money, default: 0, comment: 'Количество денег'
      t.integer :health, default: 0, comment: 'Здоровье персоонажа'
      t.integer :damage, default: 0, comment: 'Наносимый урон'
      t.integer :armour, default: 0, comment: 'Защита'
      t.integer :evasion, default: 0, comment: 'Уворот'
      t.integer :crittical_chance, default: 0, comment: 'Шанс на критический удар'
      t.integer :crittical_damage, default: 0, comment: 'Сила критического урона'

      t.timestamps
    end
  end
end
