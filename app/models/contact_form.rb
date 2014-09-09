class ContactForm < ActiveRecord::Base
  attr_accessible :comment, :email, :name, :string
end
