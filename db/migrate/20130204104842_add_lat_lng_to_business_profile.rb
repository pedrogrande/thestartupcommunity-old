class AddLatLngToBusinessProfile < ActiveRecord::Migration
  def change
    add_column :business_profiles, :latitude, :float
    add_column :business_profiles, :longitude, :float
  end
end
