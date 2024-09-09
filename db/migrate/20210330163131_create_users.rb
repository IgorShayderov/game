class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email, null: false, comment: 'Email пользователя'
      t.string :phone, default: '', comment: 'Телефон пользователя'
      t.string :name, null: false, comment: 'Имя пользователя'
      t.string :password_digest, comment: 'Пароль'
      t.integer :role, default: 0, comment: 'Роль пользователя'

      t.timestamps
    end
  end
end
