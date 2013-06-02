class Guild < ActiveRecord::Base
  attr_accessible :description, :guild_image_content_type, :guild_image_file_name, :guild_image_file_size, :name
  attr_accessible :guild_image
  has_attached_file :guild_image, :style => {:medium => "300x300>", :thumb => "100x100>"}

  validates_attachment_content_type :guild_image, :content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']
  validates_attachment_size :guild_image, :less_than => 1.megabytes
end
