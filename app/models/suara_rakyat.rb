class SuaraRakyat < ActiveRecord::Base
  attr_accessible :name, :address, :comment, :category_id
  scope :pengaduan_terbaru, -> {order("created_at desc").first}
end
