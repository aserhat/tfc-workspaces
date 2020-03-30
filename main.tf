module lab-1 {
  source = "./modules/tfe-workspace"

  tfe_org = "Symmetry"
  workspace = "lab-1"
  gcp_creds = "var.gcp_creds"
}
