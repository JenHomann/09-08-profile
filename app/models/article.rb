class Article < ActiveRecord::Base
  attr_accessible :body, :draft, :title
  
  validates :title, :presence => true
  validates :body, :presence => true
  
  def excerpt
    return body[0...30]
  end
  
  def relative_length
    if body.length < 50
      "short"
    elsif body.length > 300
      "long"
    else
      "medium"
    end
  end

end
