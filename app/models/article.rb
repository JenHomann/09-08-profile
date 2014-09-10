class Article < ActiveRecord::Base
  attr_accessible :body, :draft, :title
  
  validates :title, :presence => true
  validates :body, :presence => true
  
  def excerpt
    return body[0...30]
  end
  
end
