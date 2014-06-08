class CreateDaftarPegawais < ActiveRecord::Migration
  def change
    create_table :daftar_pegawais do |t|
      t.string :name
      t.string :nip
      t.string :pangkat_id     
      t.string :jabatan_id

      t.timestamps
    end
  end
end
