module tfc-gcp-vcsim {
  source = "./modules/tfe-workspace"

  tfe_org = "Symmetry"
  workspace = "tfc-gcp-vcsim"
  gcp_creds = "var.gcp_creds"
}
