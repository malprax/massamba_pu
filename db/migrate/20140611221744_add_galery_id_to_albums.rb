class AddGaleryIdToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :galery_id, :integer
  end
end
