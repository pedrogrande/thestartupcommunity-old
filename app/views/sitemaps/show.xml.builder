base_url = "http://#{request.host_with_port}"
xml.instruct! :xml, :version=>'1.0'
xml.tag! 'urlset', 'xmlns' => 'http://www.sitemaps.org/schemas/sitemap/0.9' do
  @other_routes.each do |other|
    xml.url {
      xml.loc("#{base_url}/#{other}")
      xml.changefreq("monthly")
    }
  end
  @user_profiles.each do |up|
    xml.url {
      xml.loc("#{base_url}/user_profiles/#{up.slug.to_s}")
      xml.changefreq("weekly")
    }
  end
  @business_profiles.each do |bp|
    xml.url {
      xml.loc("#{base_url}/business_profiles/#{bp.slug.to_s}")
      xml.changefreq("weekly")
    }
  end
end