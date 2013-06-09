class AddWishImageUpdatedAtToWishes < ActiveRecord::Migration
  def change
    add_column :wishes, :wish_image_updated_at, :datetime
  end
end
