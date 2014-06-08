class Jabatan < ActiveRecord::Base
  has_many :daftar_pegawais, dependent: :destroy
end
