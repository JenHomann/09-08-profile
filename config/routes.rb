Profile::Application.routes.draw do
  
  get "home" => 'pages#intro', as: "home"
  
  # cardinal routes for class_projects controller
  get "/projects" => 'class_projects#index', :as => "class_projects"
  get "/projects/new" => 'class_projects#new', :as => "new_project"
  post "/projects" => 'class_projects#create'
  get "/projects/:id/edit" => 'class_projects#edit', :as => "edit_project"
  post "/projects/:id/edit" => 'class_projects#update', :as => "update_project"
  get "projects/:id" => 'class_projects#detail', :as => "class_project"
  post "projects/:id/delete" => 'class_projects#delete'
  
end


#
# get "/plants/:id/edit" do
#   @plant = Plant.find(params[:id])
#
#   erb :"plants/plant_edit"
# end
#
# post "/plants/:id/update" do
#   binding.pry
#   @plant = Plant.find(params[:id])
#   @plant.update_attributes({name: params[:name], fruitbearing: params[:fruitbearing]})
#
#   erb :"plants/plant_update"
# end
#
# post "/plants/:id/delete" do
#   @plant = Plant.find(params[:id])
#   @plant.tips.each do |tip|
#     tip.plants.delete(@plant)
#   end
#   @plant.delete
#
#   erb :"plants/plant_delete"
# end
#
# get "/plants/:id" do
#   @plant = Plant.find(params[:id])
#
#   erb :"plants/plant_detail"
# end