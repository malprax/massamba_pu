class CreateDaftarPegawais < ActiveRecord::Migration
  def change
    create_table :daftar_pegawais do |t|
      t.string :name
      t.integer :nip
      t.string :name_pangkat_id
      t.string :golongan_pangkat_id
      t.string :jabatan_id

      t.timestamps
    end
  end
end
