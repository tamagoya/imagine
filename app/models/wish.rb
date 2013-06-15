class Wish < ActiveRecord::Base
  attr_accessible :description, :title, :url
  attr_accessible :wish_image
  attr_accessible :like
  has_attached_file :wish_image, :style => {:medium => "300x300>", :thumb => "100x100>"},
                    :default_url => "/image/:style/missing.png"
  belongs_to :user

  validates :wish_image, :attachment_presence => true

  # @return user.name or ""
  def wish_user_name
    unless user.nil? then
      user.name
    else
      ""
    end
  end

end
