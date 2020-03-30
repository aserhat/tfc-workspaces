module tfc-gcp-vcsim {
  source = "./modules/tfe-workspace"

  tfe_org = "Symmetry"
  workspace = "tfc-gcp-vcsim"
  gcp_creds = "var.gcp_creds"
  vcs_repo_identifier = "aserhat/tfc-gcp-vcsim"
  vcs_repo_branch = "master"
}
