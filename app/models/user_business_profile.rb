class UserBusinessProfile < ActiveRecord::Base
  belongs_to :user
  belongs_to :business_profile
  # attr_accessible :title, :body
end
