class UserProfile < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  extend FriendlyId
  friendly_id :name, use: :slugged

  acts_as_taggable
  acts_as_taggable_on :skills, :interests

  belongs_to :user

  attr_accessible :about, :email, :facebook, :google, :image, :mentor, :phone, :slug,
   :twitter, :url, :tagline, :linkedin, :github, :skill_list, :interest_list

  validates_presence_of :about, :tagline

  default_scope order: 'user_profiles.created_at DESC'

  def get_user_name
    self.user.try :name
  end
end
