module HomeHelper
  def user_profiles_count
    "Profiles (" + @user_profiles.count.to_s + ")"
  end

  def business_profiles_count
    'Startups (' + @business_profiles.count.to_s + ")"
  end
end
