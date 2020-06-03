class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :article_id

      t.timestamps
    end
    add_foreign_key :votes, :users, column: :user_id
    add_foreign_key :votes, :articles, column: :article_id
  end
end
