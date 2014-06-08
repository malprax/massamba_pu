class CreateJabatans < ActiveRecord::Migration
  def change
    create_table :jabatans do |t|
      t.string :nama_jabatan
      t.timestamps
    end
    add_index :jabatans, :nama_jabatan
  end
end
