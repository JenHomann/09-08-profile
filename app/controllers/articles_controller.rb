class ArticlesController < ApplicationController

  # GET: index view for all articles
  def index
    @articles = Article.all
  end
  
  # GET: new view to input data for a new article
  def new
     @article = Article.new
  end

  # POST: runs this Ruby code to createa a new instance of Article, loads the index or new path based on the success of this creation
  def create
     @article = Article.new(params[:article])
    
      if @article.save
        redirect_to articles_path
        
      else
        render "new"
      end
  end
  
  # GET: edit view to edit previously input data for an article
  def edit
    @article = Article.find(params[:id])
  end

  # PUT: runs this Ruby code to update the attributes of the given instance of Article, loads the detail or edit view based on the success of this update
  def update
    @article = Article.find(params[:id])
    
    if @article.update_attributes(params[:article])
      render "detail"
    else
      render "edit"
    end
  end
  
  # GET: show/detail view of a given instance of Article
  def detail
    session[:ip_address] = request.remote_ip
    @article = Article.find(params[:id])
  end
  
  # POST: loads edit view, can permanently delete the instance and row in the article table
  def delete
    Article.find(params[:id]).delete
    redirect_to articles_path
  end
  
end
