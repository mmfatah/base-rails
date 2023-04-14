class CreateRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.string :role_type
      t.integer :user_id
      t.integer :users_count

      t.timestamps
    end
  end
end
