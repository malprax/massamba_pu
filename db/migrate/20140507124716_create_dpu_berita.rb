class CreateDpuBerita < ActiveRecord::Migration
  def change
    create_table :dpu_berita do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
