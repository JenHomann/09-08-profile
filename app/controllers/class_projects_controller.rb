class ClassProjectsController < ApplicationController

   def index
     @projects = ClassProject.all
   end
   
   def new
      @project = ClassProject.new
   end

   def create
      @project = ClassProject.new(params[:class_project])
     
       if @project.save
         redirect_to class_projects_path
         
       else
         render "new"
       end
   end
   
   def edit
     @project = ClassProject.find(params[:id])
   end

   def update
     @project = ClassProject.find(params[:id])
     
     if @project.update_attributes(params[:class_project])
       render "detail"
     else
       render "edit"
     end
   end
   
   def detail
     @project = ClassProject.find(params[:id])
   end
   
   def delete
     ClassProject.find(params[:id]).delete
     redirect_to class_projects_path
   end

end