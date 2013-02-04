class CreateUserBusinessProfiles < ActiveRecord::Migration
  def change
    create_table :user_business_profiles do |t|
      t.references :user
      t.references :business_profile

      t.timestamps
    end
    add_index :user_business_profiles, :user_id
    add_index :user_business_profiles, :business_profile_id
  end
end
