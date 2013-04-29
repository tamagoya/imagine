class Wish < ActiveRecord::Base
  attr_accessible :description, :title, :wish_image_content_type, :wish_image_file_name, :wish_image_file_size
end
