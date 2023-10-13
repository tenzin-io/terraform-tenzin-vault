resource "helm_release" "vault" {
  repository       = "https://helm.releases.hashicorp.com"
  chart            = "vault"
  name             = "vault"
  create_namespace = true
  namespace        = var.vault_namespace
  version          = "0.25.0"

  values = [templatefile("${path.module}/files/values.yaml", {
    vault_backup_repo_url = var.vault_backup_repo_url
    vault_fqdn            = var.vault_fqdn
    cert_issuer_name      = var.cert_issuer_name
  })]

  timeout = "1800"
}
