class SuaraRakyat < ActiveRecord::Base
  # information table :name, :address, :comment, :categori_suara_id
  # has_many :categori_suaras, dependent: :destroy
  belongs_to :categori_suara
  scope :pengaduan_terbaru, -> {order("created_at desc").first}
  validates :name, :address, :comment, :categori_suara_id, presence: true
  validates :name, length: {minimum: 3}
  validates :address, length: {minimum: 7}
  validates :comment, length: {minimum: 10}
  

end
