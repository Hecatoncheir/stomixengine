class Product < ActiveRecord::Base
  attr_accessible :advantages, :colors, :desc, :dilution, :expense, :name, :packing, :pdf_1, :pdf_2, :pdf_3, :image
  mount_uploader :image, ImageUploader
end
