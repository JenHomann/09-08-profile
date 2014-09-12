class ArticlesController < ApplicationController
  skip_before_filter :authorize, :only => [:index, :detail]

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
      redirect_to article_path(@article.id), :notice => "Saved! Way to go."
        
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
      redirect_to article_path(@article.id), :notice => "Updated! Way to go."
    else
      render "edit"
    end
  end
  
  # GET: show/detail view of a given instance of Article
  def show
    @article = Article.find(params[:id])
    @awesomes = Awesome.where(:article_id => @article.id.to_s).length
  end
  
  # POST: loads edit view, can permanently delete the instance and row in the article table
  def delete
    Article.find(params[:id]).delete
    redirect_to articles_path
  end
  
  def awesome
    @article = Article.find(params[:id])
    @article.awesomes.create(ip_address: session_id, article_id: @article.id)
    
    if session[:liked_article_ids]
      session[:liked_article_ids] << @article.id
    else
      session[:liked_article_ids] = [@article.id]    
    end
    
    redirect_to article_path(@article.id)
  end
  
end