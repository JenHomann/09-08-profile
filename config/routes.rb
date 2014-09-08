Profile::Application.routes.draw do
  get "home" => 'pages#intro', as: "home"
  get "portfolio" => 'projects#display_all'
  
end