module BusinessProfilesHelper
  def get_name
    "Check out " + @business_profile.name + "'s profile" + @business_profile.twitter
  end
end
