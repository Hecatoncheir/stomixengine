class Image < ActiveRecord::Base
  attr_accessible :data
  mount_uploader :data, ImageUploader
  
  belongs_to :gallery
  belongs_to :product
end
