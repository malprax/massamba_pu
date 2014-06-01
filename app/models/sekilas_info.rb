class SekilasInfo < ActiveRecord::Base
  # information table  :title, :content
  scope :terbaru, -> {order("created_at desc").first}
  validates :title, :content, presence: true
  
end
