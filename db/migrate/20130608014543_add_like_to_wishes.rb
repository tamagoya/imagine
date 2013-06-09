class AddLikeToWishes < ActiveRecord::Migration
  def change
    add_column :wishes, :like, :integer, :default => 0
  end
end
