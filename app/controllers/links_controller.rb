class LinksController < ApplicationController
  
  def index
   @links = Link.all
  end
  
   def new
    @link = Link.new
  end
  
  def create
    @link = Link.new(params[:link])
  
     if @link.save
       redirect_to links_path
     
     else
       render "new"
     end
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.find(params[:id])
    @link.update_attributes({name: params[:link][:name], url: params[:link][:url], logo: params[:project][:logo]})
    render "detail"
  end

  def detail
    @link = Link.find(params[:id])
  end

  def delete
    Link.find(params[:id]).delete
    redirect_to links_path
  end

end
