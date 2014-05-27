class CreateCategoriSuaras < ActiveRecord::Migration
  def change
    create_table :categori_suaras do |t|
      t.string :jenis_suara

      t.timestamps
    end
    add_index :categori_suaras, :jenis_suara
  end
end
