class CreateIssues < ActiveRecord::Migration[6.0]
  def change
    create_table :issues do |t|
      t.string :status
      t.text :description
      t.integer :user_id
      t.integer :comments_count
      t.integer :users_count

      t.timestamps
    end
  end
end
