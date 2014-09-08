class CreateClassProjects < ActiveRecord::Migration
  def change
    create_table :class_projects do |t|
      t.string :name
      t.string :image
      t.integer :week
      t.string :description

      t.timestamps
    end
  end
end
