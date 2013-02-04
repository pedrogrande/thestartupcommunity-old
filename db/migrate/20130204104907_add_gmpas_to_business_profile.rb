class AddGmpasToBusinessProfile < ActiveRecord::Migration
  def change
    add_column :business_profiles, :gmaps, :boolean
  end
end
