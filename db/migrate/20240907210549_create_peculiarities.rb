class CreatePeculiarities < ActiveRecord::Migration[7.0]
  def change
    create_table :peculiarities do |t|
      t.integer :kind, null: false, comment: 'Тип атрибута'

      t.timestamps
    end
  end
end
