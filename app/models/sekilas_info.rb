class SekilasInfo < ActiveRecord::Base
  attr_accessible :title, :content
  scope :terbaru, -> {order("created_at desc").first}
  
end
