class CreateBusinessProfiles < ActiveRecord::Migration
  def change
    create_table :business_profiles do |t|
      t.string :name
      t.text :description
      t.string :url
      t.string :twitter
      t.string :facebook
      t.string :google
      t.string :employees
      t.string :slug
      t.string :address
      t.boolean :hiring
      t.string :image
      t.string :email
      t.string :phone
      t.string :linkedin
      t.string :github

      t.timestamps
    end
  end
end
