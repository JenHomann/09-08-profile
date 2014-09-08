Profile::Application.routes.draw do
  
  get "home" => 'pages#intro', as: "home"
  
  get "portfolio" => 'projects#display_all', as: "portfolio"
  
  get "projects" => 'projects#index', :as => "projects"
end
