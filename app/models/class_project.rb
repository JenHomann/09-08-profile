class ClassProject < ActiveRecord::Base
  attr_accessible :description, :image, :name, :week, :featured, :code_url, :view_url
  
  validates :name, :presence => true
end
