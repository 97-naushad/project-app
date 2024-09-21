variable "app_name" {
  type        = string
  description = "Define a app name"
}

variable "git_secret" {
  type        = string
  description = "Define a Git Secret"
  sensitive   = true
}

variable "gh_token" {
  type        = string
  description = "Define Github Token"
  default     = ""
  sensitive   = true
}

variable "gh_user" {
  type        = string
  description = "Define Github Username"
  default     = ""
  sensitive   = true
}

variable "namespace" {
  type        = string
  description = "Define the namespace where the app needs to be deployed."
}