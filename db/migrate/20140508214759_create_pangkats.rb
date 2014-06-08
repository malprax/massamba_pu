class CreatePangkats < ActiveRecord::Migration
  def change
    create_table :pangkats do |t|     
      t.string :nama_pangkat

      t.timestamps      
    end
    add_index :pangkats, :nama_pangkat
  end
end
