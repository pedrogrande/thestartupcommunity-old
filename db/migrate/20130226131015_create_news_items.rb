class CreateNewsItems < ActiveRecord::Migration
  def change
    create_table :news_items do |t|
      t.references :user
      t.string :title
      t.string :url
      t.text :content
      t.integer :votes
      t.boolean :flagged

      t.timestamps
    end
    add_index :news_items, :user_id
  end
end
