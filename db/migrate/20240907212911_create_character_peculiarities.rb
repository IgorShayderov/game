class CreateCharacterPeculiarities < ActiveRecord::Migration[7.0]
  def change
    create_table :character_peculiarities do |t|
      t.references :character, null: false, foreign_key: true, comment: 'Связь с персоонажем'
      t.references :peculiarity, null: false, foreign_key: true, comment: 'Связь с атрибутом'

      t.integer :count, default: 0, comment: 'Количество единиц атрибута'

      t.timestamps
    end
  end
end
