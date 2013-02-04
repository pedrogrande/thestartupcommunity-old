class CreateBusinessProfileTypes < ActiveRecord::Migration
  def change
    create_table :business_profile_types do |t|
      t.references :business_profile
      t.references :profile_type

      t.timestamps
    end
    add_index :business_profile_types, :business_profile_id
    add_index :business_profile_types, :profile_type_id
  end
end
