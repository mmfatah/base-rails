class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :upvotes
      t.integer :user_id
      t.integer :issues_id

      t.timestamps
    end
  end
end
