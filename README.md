# README
A Terraform module repository to install Vault on my home lab Kubernetes cluster.

The Vault Helm chart repo can be found here:
- <https://github.com/hashicorp/vault-helm>

<!-- BEGIN_TF_DOCS -->


## Resources

| Name | Type |
|------|------|
| [helm_release.vault](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [template_file.vault_values](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cert_issuer_name"></a> [cert\_issuer\_name](#input\_cert\_issuer\_name) | The name of the certificate issuer from cert-manager. | `string` | `"lets-encrypt"` | no |
| <a name="input_vault_backup_repo_url"></a> [vault\_backup\_repo\_url](#input\_vault\_backup\_repo\_url) | A URL to GitHub repo containing the Vault data backup. | `string` | `""` | no |
| <a name="input_vault_fqdn"></a> [vault\_fqdn](#input\_vault\_fqdn) | The FQDN of Vault UI. | `string` | n/a | yes |
| <a name="input_vault_namespace"></a> [vault\_namespace](#input\_vault\_namespace) | The namespace for Vault deployment. | `string` | `"vault"` | no |
<!-- END_TF_DOCS -->
