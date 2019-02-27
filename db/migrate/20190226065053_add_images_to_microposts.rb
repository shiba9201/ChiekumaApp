class AddImagesToMicroposts < ActiveRecord::Migration[5.1]
  def change
    add_column :microposts, :images, :json
  end
end
