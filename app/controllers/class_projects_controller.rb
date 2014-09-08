class ClassProjectsController < ApplicationController

   def index
     @projects = ClassProject.all
   end
   
   def new
      @project = ClassProject.new
   end

   def create
      @project = ClassProject.new(params[:project])
     
       if @project.save
         redirect_to projects_path 
         
       else
         render "new"
        end
      end


end