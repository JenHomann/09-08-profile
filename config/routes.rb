Profile::Application.routes.draw do
  
  root :to => 'pages#welcome' #name is already set to "root"
  
  get "home" => 'pages#intro', as: "home"
  
  # cardinal routes for class_projects controller
  resources :class_projects
  # get "/projects"            => 'class_projects#index',  :as => "class_projects"
  # get "/projects/new"        => 'class_projects#new',    :as => "new_project"
  # post "/projects"           => 'class_projects#create'
  # get "/projects/:id/edit"   => 'class_projects#edit',   :as => "edit_project"
  # put "/projects/:id"        => 'class_projects#update'
  # get "projects/:id"         => 'class_projects#show', :as => "class_project"
  # delete "projects/:id" => 'class_projects#destroy'
  
  #cardinal routes for links controller
  resources :links
  # get "/links"            => 'links#index',  :as => "links"
  # get "/links/new"        => 'links#new',    :as => "new_link"
  # post "/links"           => 'links#create'
  # get "/links/:id/edit"   => 'links#edit',   :as => "edit_link"
  # put "/links/:id"        => 'links#update'
  # get "links/:id"         => 'links#detail', :as => "link"
  # post "links/:id/delete" => 'links#destroy'
  
  #cardinal routes for contact_form controller
  resources :contact_form
  # get "/forms"             => 'contact_form#index',  :as => "contact_forms"
  # get "/forms/new"         => 'contact_form#new',    :as => "new_form"
  # post "/forms"            => 'contact_form#create'
  # get "/forms/:id/edit"    => 'contact_form#edit',   :as => "edit_form"
  # put "/forms/:id"         => 'contact_form#update'
  # get "/forms/:id"         => 'contact_form#show', :as => "contact_form"
  # delete "/forms/:id" => 'contact_form#destroy'
  
  #cardinal routes for article controller
  resources :articles
  # get "/articles"             => 'articles#index',  :as => "articles"
  # get "/articles/new"         => 'articles#new',    :as => "new_article"
  # post "/articles"            => 'articles#create'
  # get "/articles/:id/edit"    => 'articles#edit',   :as => "edit_article"
  # put "/articles/:id"         => 'articles#update'
  # get "/articles/:id"         => 'articles#detail', :as => "article"
  # delete "/articles/:id" => 'articles#destroy'
  
  get "/articles/:id/awesome"   => 'articles#awesome', :as => "awesome_page"
  
  #SOME of the cardinal routes for user controller
  post "/create_user" => 'users#create', :as => "create_user"
  get "/signup" => 'users#new', :as => "signup"
  
  #SOME of the cardinal routes for logins controller
  post "/login" => 'logins#create', :as => "create_login"
  get "/login" => 'logins#new', :as => "logins"
  get "logout" => 'logins#destroy', :as => "logout"
  
end