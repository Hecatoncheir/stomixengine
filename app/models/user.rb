class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation
  validates :email, presence: true
  has_secure_password
end
