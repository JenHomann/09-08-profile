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
     @project.update_attributes({name: params[:project][:name], image: params[:project][:image], week: params[:project][:week], description: params[:project][:description]})
     render "detail"
   end
   
   def detail
     @project = ClassProject.find(params[:id])
   end
   
   def delete
     ClassProject.find(params[:id]).delete
     redirect_to class_projects_path
   end

end