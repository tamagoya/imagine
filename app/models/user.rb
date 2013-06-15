class User < ActiveRecord::Base
  attr_accessible :name
  has_many :wishes
  validates_presence_of :name
  validates_uniqueness_of :name
end
