class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.references :user
      t.text :about
      t.string :email
      t.string :phone
      t.string :url
      t.string :twitter
      t.string :facebook
      t.string :google
      t.string :slug
      t.boolean :mentor
      t.string :image
      t.string :name
      t.string :tagline
      t.string :linkedin
      t.string :github

      t.timestamps
    end
    add_index :user_profiles, :user_id
  end
end
