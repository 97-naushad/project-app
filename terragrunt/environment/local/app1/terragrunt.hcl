
terraform {
  source = "../../../..//modules/project-app"
}

inputs = {
  app_name   = "local-atlantis"
  git_secret = ""
  gh_token   = ""
  gh_user    = ""
  namespace  = "local"
}