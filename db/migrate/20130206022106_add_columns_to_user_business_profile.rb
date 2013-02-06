class AddColumnsToUserBusinessProfile < ActiveRecord::Migration
  def change
    add_column :user_business_profiles, :is_owner, :boolean
    add_column :user_business_profiles, :position, :string
  end
end
