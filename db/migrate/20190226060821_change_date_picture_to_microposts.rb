class ChangeDatePictureToMicroposts < ActiveRecord::Migration[5.1]
  def change
    change_column :microposts, :picture, :string
  end
end
