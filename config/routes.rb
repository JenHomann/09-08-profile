Profile::Application.routes.draw do
  
  get "home" => 'pages#intro', as: "home"
  
  # cardinal routes for class_projects controller
  get "/projects" => 'class_projects#index', :as => "class_projects"
  get "/projects/new" => 'class_projects#new', :as => "new_project"
  post "/projects" => 'class_projects#create'
  get "/projects/:id/edit" => 'class_projects#edit', :as => "edit_project"
  put "/projects/:id" => 'class_projects#update'
  get "projects/:id" => 'class_projects#detail', :as => "class_project"
  post "projects/:id/delete" => 'class_projects#delete'
  
  #cardinal routes for links controller
  get "/links" => 'links#index', :as => "links"
  get "/links/new" => 'links#new', :as => "new_link"
  post "/links" => 'links#create'
  get "/links/:id/edit" => 'links#edit', :as => "edit_link"
  put "/links/:id" => 'links#update'
  get "links/:id" => 'links#detail', :as => "link"
  post "links/:id/delete" => 'links#delete'
  
end