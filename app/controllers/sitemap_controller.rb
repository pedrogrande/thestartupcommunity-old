class SitemapController < ApplicationController
   def index
     @static_pages = [root_url, about_url, contact_url, privacy_url, new_contact_form_url, terms_url]
     @user_profiles = UserProfile.all
     @business_profiles = BusinessProfile.all
     respond_to do |format|
       format.xml
     end
   end
 end