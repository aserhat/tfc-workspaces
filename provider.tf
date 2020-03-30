provider "tfe" {
    hostname     = "app.terraform.io"
    token    = var.tfc_token
    version      = "~>0.12.0"
}
