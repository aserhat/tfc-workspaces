resource "tfe_workspace" "workspace" {
    name  = var.workspace
    organization = var.tfe_org
}

resource "tfe_variable" "tfe_org" {
    key = "tfe_org"
    value = var.tfe_org
    category = "terraform"
    sensitive = "false"
    workspace_id = tfe_workspace.workspace.id
}
