class Wish < ActiveRecord::Base
  attr_accessible :description, :title, :url
  attr_accessible :wish_image
  attr_accessible :like
  has_attached_file :wish_image, :style => {:medium => "300x300>", :thumb => "100x100>"},
                    :default_url => "/image/:style/missing.png"
  validates :wish_image, :attachment_presence => true

end
