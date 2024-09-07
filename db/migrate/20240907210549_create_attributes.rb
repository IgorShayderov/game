class CreateAttributes < ActiveRecord::Migration[7.0]
  def change
    create_table :attributes do |t|
      t.integer :attribute_type, null: false, comment: 'Тип атрибута'

      t.timestamps
    end
  end
end
