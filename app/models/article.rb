class Article < ActiveRecord::Base
  attr_accessible :body, :draft, :title
  
  validates :title, :presence => true
  validates :body, :presence => true
  validates :draft, :presence => true
end
