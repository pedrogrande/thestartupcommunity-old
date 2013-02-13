module BusinessProfilesHelper
  def get_name
    "Check out " + @business_profile.name + "'s profile " + @business_profile.twitter
  end

  def profile_type_with_count(profile_type)
    profile_type.name + " (" + profile_type.business_profiles.count.to_s + ")"
  end
end
