class PegawaiList < ActiveRecord::Base
  has_many :daftar_pegawais, -> {order("position ASC")}
end
