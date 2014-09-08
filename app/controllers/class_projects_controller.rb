class ClassProjectsController < ApplicationController

   def index
     @projects = ClassProject.all
   end

end