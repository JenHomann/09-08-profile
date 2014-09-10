class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all
  end
  
  def new
     @article = Article.new
  end

  def create
     @article = Article.new(params[:class_project])
    
      if @article.save
        redirect_to articles_path
        
      else
        render "new"
      end
  end
  
  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    
    if @article.update_attributes(params[:class_project])
      render "detail"
    else
      render "edit"
    end
  end
  
  def detail
    Article = Article.find(params[:id])
  end
  
  def delete
    Article.find(params[:id]).delete
    redirect_to articles_path
  end
end