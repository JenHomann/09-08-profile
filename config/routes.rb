Profile::Application.routes.draw do
  
  get "home" => 'pages#intro', as: "home"
  
  get "portfolio" => 'projects#display_all', as: "portfolio"
  
  # cardinal routes for class_projects controller
  get "projects" => 'class_projects#index', :as => "projects"
  get "projects/new" => 'class_projects#new', :as => "new_project"
  
end
