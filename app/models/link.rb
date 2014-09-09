class Link < ActiveRecord::Base
  attr_accessible :logo, :name, :url
  
  validates :name, :presence => true
  validates :url, :presence => true
  validates :logo, :presence => true
end
