class Awesome < ActiveRecord::Base
  attr_accessible :article_id, :ip_address
  
  validates_uniqueness_of :article_id, :scope => :ip_address
end
