class AddUrlColumnsToClassProjects < ActiveRecord::Migration
  def change
    add_column :class_projects, :code_url, :string
    add_column :class_projects, :view_url, :string
  end
end
