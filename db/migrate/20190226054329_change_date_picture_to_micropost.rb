class ChangeDatePictureToMicropost < ActiveRecord::Migration[5.1]
  def change
   change_column :microposts, :picture, :json
  end
end
