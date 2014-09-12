Profile::Application.routes.draw do
  
  root :to => 'pages#welcome' #name is already set to "root"
  
  get "home" => 'pages#intro', as: "home"
  
  # cardinal routes for class_projects controller
  get "/projects"            => 'class_projects#index',  :as => "class_projects"
  get "/projects/new"        => 'class_projects#new',    :as => "new_project"
  post "/projects"           => 'class_projects#create'
  get "/projects/:id/edit"   => 'class_projects#edit',   :as => "edit_project"
  put "/projects/:id"        => 'class_projects#update'
  get "projects/:id"         => 'class_projects#detail', :as => "class_project"
  post "projects/:id/delete" => 'class_projects#delete'
  
  #cardinal routes for links controller
  get "/links"            => 'links#index',  :as => "links"
  get "/links/new"        => 'links#new',    :as => "new_link"
  post "/links"           => 'links#create'
  get "/links/:id/edit"   => 'links#edit',   :as => "edit_link"
  put "/links/:id"        => 'links#update'
  get "links/:id"         => 'links#detail', :as => "link"
  post "links/:id/delete" => 'links#delete'
  
  #cardinal routes for contact_form controller
  get "/forms"             => 'contact_form#index',  :as => "contact_forms"
  get "/forms/new"         => 'contact_form#new',    :as => "new_form"
  post "/forms"            => 'contact_form#create'
  get "/forms/:id/edit"    => 'contact_form#edit',   :as => "edit_form"
  put "/forms/:id"         => 'contact_form#update'
  get "/forms/:id"         => 'contact_form#detail', :as => "contact_form"
  post "/forms/:id/delete" => 'contact_form#delete'
  
  #cardinal routes for article controller
  get "/articles"             => 'articles#index',  :as => "articles"
  get "/articles/new"         => 'articles#new',    :as => "new_article"
  post "/articles"            => 'articles#create'
  get "/articles/:id/edit"    => 'articles#edit',   :as => "edit_article"
  put "/articles/:id"         => 'articles#update'
  get "/articles/:id"         => 'articles#detail', :as => "article"
  post "/articles/:id/delete" => 'articles#delete'
  
  get "/articles/:id/awesome"   => 'articles#awesome', :as => "awesome_page"
  
  #SOME of the cardinal routes for user controller
  post "create_user" => 'users#create', :as => "create_user"
  get "signup" => 'users#new', :as => "signup"
  
end