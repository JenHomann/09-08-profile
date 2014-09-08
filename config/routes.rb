Profile::Application.routes.draw do
  
  get "home" => 'pages#intro', as: "home"
  
  # cardinal routes for class_projects controller
  get "/projects" => 'class_projects#index', :as => "class_projects"
  get "/projects/new" => 'class_projects#new', :as => "new_project"
  post "/projects" => 'class_projects#create'
  
end
