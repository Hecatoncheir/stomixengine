class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :products
  belongs_to :section
end
