class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation
  
  has_secure_password
  
  validates :password, :presence => true
  validates :password, :confirmation => true
end