class AddGaleryIdToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :galery_id, :integer
    add_index :albums, :galery_id
  end
  
end
