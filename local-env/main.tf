# Deploy Atlantis server 
module "local-atlantis" {
  source     = "../modules/atlantis-server/"
  app_name   = "local-atlantis"
  git_secret = var.git_secret
  gh_token   = var.gh_token
  gh_user    = var.gh_user
  namespace  = "local"
}

# Deploy Monitoring 
module "local-monitoring" {
  source               = "../modules/monitoring/"
  monitoring_namespace = "monitoring"
}