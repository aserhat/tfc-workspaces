# Terraform Cloud Workspaces

## Requirements

* An account on github.com
* An account on app.terraform.io
  * Create an API Token in your user settings and save it for later use.

## Get Started

* Create a project in github (I called mine tfc-workspaces)
* Create an organization (I called mine Symmetry)
* Create a workspace which will be used to create other workspaces (I called mine tfc-workspace):
  * Set the version control settings to connect to the particular repository create above.
  * Create a sensitive variable in the workspace called to hold the api key (I called mine tfc_token).
  * Update the worksapce General Settings to Auto Apply for the Apply Method.
* Put this code in the root of your GitHub project:
  * View/Edit main.tf to update/add worksapces to be created.
  * Git add, commit and push.
  * Check that your workspace(s) gets created in your Terraform Cloud portal.
  * You may have to go to the workspace you created and queue a plan once.
  * Make changes to main.tf as needed, git add, commit and push.
