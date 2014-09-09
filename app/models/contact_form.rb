class ContactForm < ActiveRecord::Base
  attr_accessible :comment, :email, :name, :string

  validates :email, :presence => true
  validates :comment, :presence =>true
end
