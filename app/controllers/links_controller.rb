class LinksController < ApplicationController

before_filter :authorize, :only => [:new, :create, :edit, :update, :delete]
before_filter :session_id

  # GET: index view for all links
  def index
   @links = Link.all
  end
  
  # GET: new view to input data for a new link
   def new
    @link = Link.new
  end
  
  # POST: runs this Ruby code to createa a new instance of Link, loads the index or new path based on the success of this creation
  def create
    @link = Link.new(params[:link])
  
     if @link.save
       redirect_to links_path
     
     else
       render "new"
     end
  end

  # GET: edit view to edit previously input data for a link
  def edit
    @link = Link.find(params[:id])
  end

  # PUT: runs this Ruby code to update the attributes of the given instance of link, loads the detail or edit view based on the success of this update
  def update
    @link = Link.find(params[:id])
    if @link.update_attributes(params[:link])
      render "detail"
    else
      render "edit"
    end
  end

  # GET: show/detail view of a given instance of link
  def detail
    @link = Link.find(params[:id])
  end

  # POST: loads edit view, can permanently delete the instance and row in the link table
  def delete
    Link.find(params[:id]).delete
    redirect_to links_path
  end

end
