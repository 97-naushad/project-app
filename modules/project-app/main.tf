resource "helm_release" "atlantis" {
  name       = var.app_name
  chart      = "atlantis"
  repository = "https://runatlantis.github.io/helm-charts"
  namespace  = kubernetes_namespace_v1.namespace.id

  values = [
    templatefile("${path.module}/templates/values.yaml", {
      gh_user    = var.gh_user
      gh_token   = var.gh_token
      git_secret = var.git_secret
      orgAllowlist: "github.com/97-naushad/project-app/*"
    })
  ]
}

resource "kubernetes_namespace_v1" "namespace" {
  metadata {
    name = var.namespace
  }
}