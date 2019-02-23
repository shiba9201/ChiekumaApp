class RenameCategoryColumnToMicroposts < ActiveRecord::Migration[5.1]
  def change
    rename_column :microposts, :category, :category_id
  end
end
