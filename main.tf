resource "helm_release" "vault" {
  repository       = "https://helm.releases.hashicorp.com"
  chart            = "vault"
  name             = "vault"
  create_namespace = true
  namespace        = var.vault_namespace
  version          = "0.24.0"

  values = [
    data.template_file.vault_values.rendered
  ]
}

data "template_file" "vault_values" {
  template = file("${path.module}/files/values.yaml")
  vars = {
    vault_backup_repo_url = var.vault_backup_repo_url
    vault_fqdn            = var.vault_fqdn
    cert_issuer_name      = var.cert_issuer_name
  }
}
