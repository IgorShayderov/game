class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.string :name, null: false, comment: 'Наименование изображения'
      t.references :imageable, polymorphic: true, comment: 'Полиморфная связь с изображением'

      t.timestamps
    end
  end
end
