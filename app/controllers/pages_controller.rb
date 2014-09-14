class PagesController < ApplicationController
  
  skip_before_filter :authorize
    
  def intro
  end
  
  def about
  end
  
end
