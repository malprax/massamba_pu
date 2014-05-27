class SuaraRakyat < ActiveRecord::Base
  # attr_accessible :name, :address, :comment, :categori_suara_id
  # has_many :categori_suaras, dependent: :destroy
  belongs_to :categori_suara
  scope :pengaduan_terbaru, -> {order("created_at desc").first}
end
