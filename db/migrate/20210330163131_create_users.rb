class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :login, limit: 30, null: false
      t.string :password_digest, null: false
      t.string :name, limit: 30, default: ''
      t.string :email, limit: 40, null: false
      t.boolean :is_admin, default: false

      t.timestamps
    end

    add_index :users, :login, unique: true
    add_index :users, :email
  end
end
