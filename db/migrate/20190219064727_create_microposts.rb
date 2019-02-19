class CreateMicroposts < ActiveRecord::Migration[5.1]
  def change
    create_table :microposts do |t|
      t.integer :user_id
      t.string :picture
      t.string :name
      t.string :category
      t.text :recommendation
      t.string :store
      t.string :time
      t.string :holiday
      t.string :plase
      

      t.timestamps
    end
    add_index :microposts, [:user_id, :created_at]
  end
end
