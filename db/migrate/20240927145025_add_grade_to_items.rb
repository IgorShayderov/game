class AddGradeToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :grade, :integer, default: 0, comment: 'Грейд предемета (обычный, легендарный и тд)'
  end
end
