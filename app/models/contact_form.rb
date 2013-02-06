class ContactForm < ActiveRecord::Base
  attr_accessible :content, :email, :name, :phone, :subject
end
