module tfc-gcp-vcsim {
  source = "./modules/tfe-workspace"

  tfe_org = "Symmetry"
  workspace = "tfc-gcp-vcsim"
  gcp_creds = var.gcp_creds
  gcp_creds_2 = var.gcp_creds_2

  vcs_repo_identifier = "aserhat/tfc-gcp-vcsim"
  vcs_repo_branch = "master"
  vcs_repo_oauth_token = "ot-vbGD8WZb4KC6E9dK"

  terraform_version = "0.11.10"

  auto_apply = true
}

module tfc-gcp-k8s {
  source = "./modules/tfe-workspace"

  tfe_org = "Symmetry"
  workspace = "tfc-gcp-k8s"
  gcp_creds = var.gcp_creds
  gcp_creds_2 = var.gcp_creds_2

  vcs_repo_identifier = "aserhat/tfc-gcp-k8s"
  vcs_repo_branch = "master"
  vcs_repo_oauth_token = "ot-vbGD8WZb4KC6E9dK"

  terraform_version = "0.11.10"

  auto_apply = true
}
