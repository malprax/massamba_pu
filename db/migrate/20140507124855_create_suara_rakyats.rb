class CreateSuaraRakyats < ActiveRecord::Migration
  def change
    create_table :suara_rakyats do |t|
      t.string :name
      t.integer :contact_person
      t.text :content

      t.timestamps
    end
  end
end
