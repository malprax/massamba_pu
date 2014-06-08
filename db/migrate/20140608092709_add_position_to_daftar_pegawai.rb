class AddPositionToDaftarPegawai < ActiveRecord::Migration
  def change
    add_column :daftar_pegawais, :position, :integer
  end
end
