class ClassProjectsController < ApplicationController

   def index
     @projects = ClassProject.all
   end
   
   def new
      @project = ClassProject.new
   end

end