class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :title
      t.text :description
      t.string :wish_image_file_name
      t.string :wish_image_content_type
      t.string :wish_image_file_size

      t.timestamps
    end
  end
end
