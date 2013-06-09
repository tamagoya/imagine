class AddGuildImageUpdatedAtToGuilds < ActiveRecord::Migration
  def change
    add_column :guilds, :guild_image_updated_at, :datetime
  end
end
