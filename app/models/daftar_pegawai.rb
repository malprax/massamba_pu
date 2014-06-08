class DaftarPegawai < ActiveRecord::Base
  validates_uniqueness_of :name, :nip
  validates :name, :nip, :pangkat_id, :jabatan_id, :presence => true
  validates_length_of :nip, :minimum => 18
  belongs_to :pangkat
  belongs_to :jabatan
end
