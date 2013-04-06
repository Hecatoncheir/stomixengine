class Gallery < ActiveRecord::Base
  attr_accessible :name, :images
  has_many :images, dependent: :destroy
end
