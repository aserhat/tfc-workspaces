# Terraform Cloud Workspaces

## Requirements

* An account on GitHub (github.com)
* An account on Terraform Cloud (app.terraform.io)
  * Create an API Token in your user settings and save it for later use.

## Get Started

* Create a project in GitHub (I called mine tfc-workspaces)
  * Initialize it with a README.md which creating it.
* Create an organization in Terraform Cloud (I called mine Symmetry)
* In Terraform Cloud create a workspace which will be used to create other workspaces (I called mine tfc-workspace):
  * Set the version control settings to connect to the particular repository create above.
    * I use granular permissions and speficy which repos the Terraform Cloud Github Application can access.
  * Create a sensitive variable in the workspace called to hold the api key you created (I called mine tfc_token).
  * Update the worksapce General Settings to Auto Apply for the Apply Method.
* Put this code in the root of your GitHub project:
  * View/Edit main.tf to update/add worksapces to be created and update workspace names if you used different ones.
  * Git add, commit and push.
  * Check that your workspace(s) gets created in your Terraform Cloud portal.
  * You may have to go to the workspace you created in Terraform Cloud and queue a plan once.
  * Make changes to main.tf as needed, git add, commit and push.

## Release Notes

### v1.0.0
* Everything you see above.

### v1.1.0
* Adds a sensitive credential in the created workspaces for Google Compute Platform (GCP).
  * To use add create a service in in GCP with need rights, create a JSON Key.
  * In your parent workspace (tfc-worksapce above) create a sensitive variable gcp_creds with the contents of the key.
* Adds a set of credentials to use with vcsim
  * In your parent workspace (tfc-workspace above) create a sensitive vairable vcsim_vc-password with the password you want to use in vcsim.
  * In your parent workspace (tfc-workspace above) create a vairable vcsim_vc-password with the user you want to use in vcsim.
