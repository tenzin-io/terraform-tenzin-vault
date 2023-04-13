variable "vault_fqdn" {
  type        = string
  description = "The FQDN of Vault UI."
}

variable "vault_namespace" {
  type        = string
  default     = "vault"
  description = "The namespace for Vault deployment."
}

variable "vault_backup_repo_url" {
  type        = string
  description = "A URL to GitHub repo containing the Vault data backup."
  default     = ""
}

variable "cert_issuer_name" {
  type        = string
  description = "The name of the certificate issuer from cert-manager."
  default     = "lets-encrypt"
}
