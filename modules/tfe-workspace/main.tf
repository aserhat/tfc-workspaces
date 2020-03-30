resource "tfe_workspace" "workspace" {
    name  = var.workspace
    organization = var.tfe_org
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
