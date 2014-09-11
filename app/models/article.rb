class Article < ActiveRecord::Base
  attr_accessible :body, :draft, :title, :featured
  
  has_many :likes
  
  validates :title, :presence => true
  validates :body, :presence => true
  
  scope :is_draft, where(:draft => true)
  
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
  
  def self.long_posts
    @articles = Article.all
    articles_array = []
    
    @articles.each do |article|
      if article.relative_length == "long"
        articles_array << article
      else
      end
      articles_array
    end
  end
  
end
