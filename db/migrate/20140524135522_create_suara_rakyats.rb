class CreateSuaraRakyats < ActiveRecord::Migration
  def change
    create_table :suara_rakyats do |t|
      t.string :name
      t.string :address
      t.integer :categori_suara_id
      t.text :comment

      t.timestamps
    end
  end
end
