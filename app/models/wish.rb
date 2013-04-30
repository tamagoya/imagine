class Wish < ActiveRecord::Base
  attr_accessible :description, :title, :wish_image_content_type, :wish_image_file_name, :wish_image_file_size, :url
  attr_accessible :wish_image
  has_attached_file :wish_image, :style => {:medium => "300x300>", :thumb => "100x100>"}

  validates_attachment_content_type :wish_image, :content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']
  validates_attachment_size :wish_image, :less_than => 1.megabytes
end
