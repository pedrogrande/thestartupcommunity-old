class ProfileType < ActiveRecord::Base
  attr_accessible :name

  has_many :business_profile_types
  has_many :business_profiles, :through => :business_profile_types

  default_scope order: 'profile_types.name ASC'
end
