class ContactFormController < ApplicationController
  
  def index
   @forms = ContactForm.all
  end
  
   def new
    @form = ContactForm.new
  end
  
  def create
    @form = ContactForm.new(params[:contact_form])
  
     if @form.save
       redirect_to contact_forms_path
     
     else
       render "new"
     end
  end

  def edit
    @form = ContactForm.find(params[:id])
  end

  def update
    @form = ContactForm.find(params[:id])
    if @form.update_attributes(params[:contact_form])
      render "detail"
    else
      render "edit"
    end
  end

  def detail
    @form = ContactForm.find(params[:id])
  end

  def delete
    ContactForm.find(params[:id]).delete
    redirect_to contact_forms_path
  end
end
