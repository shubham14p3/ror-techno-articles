class AddIndexsToVotes < ActiveRecord::Migration[5.2]
  def change
      add_index :votes, :article_id
      add_index :votes, :user_id
  end
end
