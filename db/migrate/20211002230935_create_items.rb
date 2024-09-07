class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name, null: false, comment: 'Наименование предмета'
      t.text :description, default: '', comment: 'Описание предмета'
      t.integer :price, default: 0
      t.integer :item_type, default: 0, comment: 'Тип предемета (обычный, квестовый и тд)'
      t.integer :item_kind, null: false, comment: 'Вид предмета (оружие, доспех и тд)'
      t.integer :appliance, default: 0, comment: 'Применимость предмета (поглощаемый, временный, постоянный и тд)'

      t.timestamps
    end
  end
end
