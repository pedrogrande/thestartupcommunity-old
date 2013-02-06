class AddResponsibleToBusinessProfile < ActiveRecord::Migration
  def change
    add_column :business_profiles, :responsible, :boolean
  end
end
