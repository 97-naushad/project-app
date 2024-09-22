# Requirements
 - Teraform version 1.6.6

## Providers

- Kubernetes
- Helm

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_local-atlantis"></a> [local-atlantis](#module\_local-atlantis) | ../modules/atlantis-server/ | n/a |
| <a name="module_local-monitoring"></a> [local-monitoring](#module\_local-monitoring) | ../modules/monitoring/ | n/a |


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | Define a app name | `string` | `"local-atlantis"` | no |
| <a name="input_gh_token"></a> [gh\_token](#input\_gh\_token) | Define Github Token | `string` | `"ATLANTIS_GH_TOKEN"` | no |
| <a name="input_gh_user"></a> [gh\_user](#input\_gh\_user) | Define Github Username | `string` | `"ATLANTIS_GH_USER"` | no |
| <a name="input_git_secret"></a> [git\_secret](#input\_git\_secret) | Define a Git Secret | `string` | `"ATLANTIS_GH_WEBHOOK_SECRET"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Define the namespace where the app needs to be deployed. | `string` | `"local"` | no |

