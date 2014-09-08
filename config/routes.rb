Profile::Application.routes.draw do
  
  get "home" => 'pages#intro', as: "aboutme"
  
  get "portfolio" => 'projects#display_all'
  
end
