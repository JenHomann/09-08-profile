class LinksController < ApplicationController

  skip_before_filter :authorize, :only => [:index, :show]

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
       redirect_to links_path, :notice => "You have successfully created a new link."
     
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
      redirect_to link_path, :notice => "You have successfully updated this link."
    else
      render "edit"
    end
  end

  # GET: show/detail view of a given instance of link
  def show
    @link = Link.find(params[:id])
  end

  # POST: loads edit view, can permanently delete the instance and row in the link table
  def destroy
    Link.find(params[:id]).delete
    redirect_to links_path, :notice => "You have successfully deleted this link."
  end

end
