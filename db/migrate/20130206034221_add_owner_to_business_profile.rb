class AddOwnerToBusinessProfile < ActiveRecord::Migration
  def change
    add_column :business_profiles, :owner, :integer
  end
end
