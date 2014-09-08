Profile::Application.routes.draw do
  
  get "home" => 'pages#intro', as: "home"
  
  get "portfolio" => 'projects#display_all', as: "portfolio"
  
  # cardinal routes for class_projects controller
  get "projects" => 'class_projects#index', :as => "projects"
  
end
