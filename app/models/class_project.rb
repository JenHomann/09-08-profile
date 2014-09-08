class ClassProject < ActiveRecord::Base
  attr_accessible :description, :image, :name, :week
  
  validates :name, :presence => true
end
