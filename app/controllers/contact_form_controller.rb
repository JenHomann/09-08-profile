class ContactFormController < ApplicationController
  
  skip_before_filter :authorize, :only => [:new, :create]
  
  # GET: index view for all contact forms
  def index
   @forms = ContactForm.all
  end
  
  # GET: new view to input data for a new contact form
   def new
    @form = ContactForm.new
  end
  
  # POST: runs this Ruby code to createa a new instance of Contact Form, loads the index or new path based on the success of this creation
  def create
    @form = ContactForm.new(params[:contact_form])
  
     if @form.save
       redirect_to root_path, :notice => "Your message has been successfully sent."
     
     else
       render "new"
     end
  end

  # GET: edit view to edit previously input data for a contact form
  def edit
    @form = ContactForm.find(params[:id])
  end

  # PUT: runs this Ruby code to update the attributes of the given instance of Contact Form, loads the detail or edit view based on the success of this update
  def update
    @form = ContactForm.find(params[:id])
    if @form.update_attributes(params[:contact_form])
      redirect_to contact_form_path, :notice => "You have successfully updated this form's information."
    else
      render "edit"
    end
  end

  # GET: show/detail view of a given instance of Project
  def show
    @form = ContactForm.find(params[:id])
  end

  # POST: loads edit view, can permanently delete the instance and row in the contact form table
  def destroy
    ContactForm.find(params[:id]).delete
    redirect_to contact_forms_path, :notice => "You have successfully deleted this form."
  end
end
