class ClassProjectsController < ApplicationController
  
  skip_before_filter :authorize, :only => [:index, :show]
  
  # GET: index view for all projects
   def index
     @projects = ClassProject.all
     @featured = ClassProject.is_featured.first
   end
   
   # GET: new view to input data for a new project
   def new
      @project = ClassProject.new
   end

   # POST: runs this Ruby code to createa a new instance of Project, loads the index or new path based on the success of this creation
   def create
      @project = ClassProject.new(params[:class_project])
     
       if @project.save
         redirect_to class_project_path(@project.id), :notice => "You have successfully added this project."
         
       else
         render "new"
       end
   end
   
   # GET: edit view to edit previously input data for a project
   def edit
     @project = ClassProject.find(params[:id])
   end

   # PUT: runs this Ruby code to update the attributes of the given instance of project, loads the detail or edit view based on the success of this update
   def update
     @project = ClassProject.find(params[:id])
     
     if @project.update_attributes(params[:class_project])
       redirect_to class_project_path(@project.id), :notice => "You hae successfully added a project."
     else
       render "edit"
     end
   end
   
   # GET: show/detail view of a given instance of Project
   def show
     @project = ClassProject.find(params[:id])
   end
   
   # POST: loads edit view, can permanently delete the instance and row in the project table
   def destroy
     ClassProject.find(params[:id]).delete
     redirect_to class_projects_path
   end

end