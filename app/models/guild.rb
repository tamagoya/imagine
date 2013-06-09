class Guild < ActiveRecord::Base
  attr_accessible :description, :guild_image_content_type, :guild_image_file_name, :guild_image_file_size, :name
  attr_accessible :guild_image
  has_attached_file :guild_image, :style => {:medium => "300x300>", :thumb => "100x100>"},
                    :default_url => "/image/:style/missing.png"
  validates :guild_image, :attachment_presence => true
end
