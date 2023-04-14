class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :phone
      t.string :profile_photo
      t.integer :roles_id
      t.integer :issues_id
      t.integer :building_id
      t.integer :roles_count

      t.timestamps
    end
  end
end
