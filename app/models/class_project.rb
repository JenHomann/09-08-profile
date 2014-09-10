class ClassProject < ActiveRecord::Base
  attr_accessible :description, :image, :name, :week, :featured
  
  validates :name, :presence => true
end
