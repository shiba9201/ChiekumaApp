class AddCharacterIdToMicroposts < ActiveRecord::Migration[5.1]
  def change
    add_column :microposts, :character_id, :integer
  end
end
