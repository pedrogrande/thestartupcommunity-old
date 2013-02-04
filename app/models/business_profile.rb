class BusinessProfile < ActiveRecord::Base
  acts_as_gmappable
  mount_uploader :image, ImageUploader
  extend FriendlyId
  friendly_id :name, use: :slugged

  attr_accessible :address, :description, :email, :employees, :facebook, :google, :hiring,
   :image, :name, :phone, :slug, :twitter, :url, :profile_type_ids, :specialty_list

  validates_presence_of :description
  validates_uniqueness_of :slug

  has_many :business_profile_types
  has_many :profile_types, :through => :business_profile_types
  has_many :user_business_profiles
  has_many :users, :through => :user_business_profiles

  def gmaps4rails_address
    "#{self.address}" 
  end

  def gmaps4rails_infowindow
    "<a href=\"#{url}\"><h4>#{name}</h4></a>" << "<h4>#{address}</h4>"
  end

  def belongs?(user)
    self.users.include?(user)
  end  

  def find_tag(profile_type_id)
    BusinessProfile.joins(:profile_types).where(:profile_type => {:profile_type_id => profile_type_id})
  end

  default_scope order: 'business_profiles.created_at DESC'

end
