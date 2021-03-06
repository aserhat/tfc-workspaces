resource "tfe_workspace" "workspace" {
    name  = var.workspace
    organization = var.tfe_org
    vcs_repo {
        identifier = var.vcs_repo_identifier
        branch = var.vcs_repo_branch
        oauth_token_id = var.vcs_repo_oauth_token
    }
    terraform_version = var.terraform_version
    auto_apply = var.auto_apply
}

resource "tfe_variable" "tfe_org" {
    key = "tfe_org"
    value = var.tfe_org
    category = "terraform"
    sensitive = false
    workspace_id = tfe_workspace.workspace.id
}

resource "tfe_variable" "gcp_creds" {
    key = "gcp_creds"
    value = var.gcp_creds
    category = "terraform"
    sensitive = true
    workspace_id = tfe_workspace.workspace.id
}


resource "tfe_variable" "vcsim_vc_user" {
    key = "vcsim_vc_user"
    value = var.vcsim_vc_user
    category = "terraform"
    sensitive = false
    workspace_id = tfe_workspace.workspace.id
}

resource "tfe_variable" "vcsim_vc_pass" {
    key = "vcsim_vc_pass"
    value = var.vcsim_vc_pass
    category = "terraform"
    sensitive = true
    workspace_id = tfe_workspace.workspace.id
}
