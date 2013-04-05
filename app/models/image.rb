class Image < ActiveRecord::Base
  attr_accessible :data
  mount_uploader :data, ImageUploader
  
  
end
