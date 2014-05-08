class CreatePangkats < ActiveRecord::Migration
  def change
    create_table :pangkats do |t|
      t.string :golongan
      t.string :nama_pangkat

      t.timestamps
    end
  end
end
