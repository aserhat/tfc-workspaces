variable "tfe_org" {}
variable "workspace" {}
variable "gcp_creds" {
  default = ""
}

variable = "auto_apply" {
  default = false
}

variable "terraform_version" {
  default = "0.12.24"
}
variable "vcs_repo_identifier" {
  default = ""
}
variable "vcs_repo_branch" {
  default = ""
}
variable "vcs_repo_oauth_token" {
  default = ""
}
