variable "app_name" {
  type        = string
  description = "Define a app name"
  default     = "local-atlantis"
}

variable "git_secret" {
  type        = string
  description = "Define a Git Secret"
  default     = "ATLANTIS_GH_WEBHOOK_SECRET"
  sensitive   = true
}

variable "gh_token" {
  type        = string
  description = "Define Github Token"
  default     = "ATLANTIS_GH_TOKEN"
  sensitive   = true
}

variable "gh_user" {
  type        = string
  description = "Define Github Username"
  default     = "ATLANTIS_GH_USER"
  sensitive   = true
}

variable "namespace" {
  type        = string
  description = "Define the namespace where the app needs to be deployed."
  default     = "local"
}