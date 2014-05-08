class CreateJabatans < ActiveRecord::Migration
  def change
    create_table :jabatans do |t|
      t.string :name_jabatan

      t.timestamps
    end
  end
end
