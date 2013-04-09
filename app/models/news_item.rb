class NewsItem < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content, :flagged, :title, :url, :votes
end
