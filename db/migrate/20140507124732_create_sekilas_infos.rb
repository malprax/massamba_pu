class CreateSekilasInfos < ActiveRecord::Migration
  def change
    create_table :sekilas_infos do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
