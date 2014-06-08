class CreatePegawaiLists < ActiveRecord::Migration
  def change
    create_table :pegawai_lists do |t|

      t.timestamps
    end
  end
end
