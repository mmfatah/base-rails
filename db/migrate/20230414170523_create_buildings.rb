class CreateBuildings < ActiveRecord::Migration[6.0]
  def change
    create_table :buildings do |t|
      t.string :address
      t.string :name
      t.integer :user_id
      t.integer :users_count

      t.timestamps
    end
  end
end
