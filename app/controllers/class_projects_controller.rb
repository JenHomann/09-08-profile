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
     @project.update_attributes({name: params[:class_project][:name], image: params[:class_project][:image], week: params[:class_project][:week], description: params[:class_project][:description]})
     render "detail"
     
     # if @project.update_attributes
     #   redirect_to "project"
     # else
     #   render "edit"
     # end
   end
   
   def detail
     @project = ClassProject.find(params[:id])
   end
   
   def delete
     ClassProject.find(params[:id]).delete
     redirect_to class_projects_path
   end

end