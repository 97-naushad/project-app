## Deploying Atlantis with Terraform and Helm
This repository provides a guide to deploy Atlantis to a Kubernetes cluster using Terraform and Helm. I will also configure a webhook for GitHub integration and deploy a monitoring solution.


## Prerequisites
 - A running Kubernetes cluster (e.g., Minikube) `minikube start`
 - Helm installed on your local machine
 - Terraform installed on your local machine
 - Public GitHub repository for Atlantis integration
 - Use Cloudflare Tunnel or another tunneling service to expose Atlantis locally

## Steps
 1 - Clone the repository to your local machine
      
```bash 
git clone https://github.com/97-naushad/project-app.git
cd project-app/local-env 
```

 2 - Set Up Local Kubernetes Cluster

Set up a local Kubernetes cluster (Minikube). For Minikube:   
```bash
  minikube start
```

 3 - Initialize and apply the configuration:
Create `terraform.tfvars` for your variables such as:

```bash
app_name   = "local-atlantis"
git_secret = "<<replace_me>>"
gh_token   = "<<replace_me>>"
gh_user    = "<<replace_me>>"
namespace  = "local"
```
Run Terraform init and apply via command: 
```bash
terraform init
terraform apply
```
 4 - Expose Atlantis Locally via Cloudflare Tunnel
Expose Atlantis if it's running locally (no public IP):

To get local-port: 
```bash
minikube service local-atlantis --url -n local
http://127.0.0.1:50015
```

```bash
cloudflared tunnel --url http://127.0.0.1:50015
```
You will get public endpoint 
e.g  [Temporary endpoint](https://allowing-el-jet-adjustments.trycloudflare.com/)

5 - Configure GitHub Webhook
 - Go to your GitHub repository settings.
 - Under "Webhooks", click "Add webhook".
 - Set the payload URL to the public or tunneled Atlantis URL:
    e.g https://[Temporary endpoint](https://allowing-el-jet-adjustments.trycloudflare.com/)/events
 - Set Content type to `application/json`.
 - Select individual events.
      - push event  
      - Pull request events.
 - Click "Add webhook".




### Requirements
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


// TODO List
 - Atlantis apply is not working 