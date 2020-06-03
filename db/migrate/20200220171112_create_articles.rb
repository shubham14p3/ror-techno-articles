class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.integer :user_id
      t.string :title
      t.string :text

      t.timestamps
    end
    add_index :articles, :user_id
  end
end
