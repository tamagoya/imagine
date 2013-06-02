class CreateGuilds < ActiveRecord::Migration
  def change
    create_table :guilds do |t|
      t.string :name
      t.text :description
      t.string :guild_image_file_name
      t.string :guild_image_content_type
      t.string :guild_image_file_size

      t.timestamps
    end
  end
end
