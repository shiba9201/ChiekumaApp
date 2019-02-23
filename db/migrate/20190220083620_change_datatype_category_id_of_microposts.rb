class ChangeDatatypeCategoryIdOfMicroposts < ActiveRecord::Migration[5.1]
  def change
    change_column :microposts, :category_id, :integer
  end
end
