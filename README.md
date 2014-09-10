# The Rules

1. Model name is singular, because classes represent the *concept* - which is itself singular. (e.g. "user.rb" for the `User` model.)
2. The table name is the model name - pluralized, lowercased, underscored. (e.g. "users" for the `User` model, or "class_projects" for `ClassProject`.)
3. Controllers are pluralized. If the controller corresponds to a model, use the model's table name for the controller's name. E.g. `UsersController` in "users_controller.rb" or `ClassProjectsController` in "class_projects_controller.rb".
4. The views for a controller's actions should live in a folder that matches the controller's name. E.g. `ClassProjectsController`'s views live in "views/class_projects".
5. Route names should adhere to this format:
  - Index: "class_projects"
  - New: "new_class_project"
  - Show: "class_project"
  
Example of routes and names:

![](http://i.imgur.com/CIZ8rrl.png)