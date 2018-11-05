class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :title
      t.string :medium
      t.string :size
      t.datetime :date
      t.integer :category
      t.integer :filetype
      t.string :url
      t.string :places

      t.timestamps
    end
  end
end
