class User < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged


  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :user_profile_id, :slug, :opt_in

  validates_uniqueness_of :slug
  validates_acceptance_of :accept_terms

  has_one :user_profile, :dependent => :destroy
  has_many :user_business_profiles
  has_many :business_profiles, :through => :user_business_profiles

  def works_here?(business_profile)
    self.business_profiles.include?(business_profile)
  end
end
