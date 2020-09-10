variable "certs" {
  description = "A structure containing the defintion of certs you want provisioned"
  type = map(object({
    common_name          = string
    dns_names            = list(string)
    tls_private_key      = string
    tls_private_key_algo = string
    force_renewal        = bool
  }))
}

variable "account_key_pem" {
  description = "The private rsa acme account key"
  type        = string
}

variable "email_address" {
  description = "The email address to be associated with the acme account registration"
  type        = string
}

variable "cloudflare_dns_api_token" {
  description = "CF DNS token with permissions: Zone.DNS.edit, include specific zone"
  type        = string
}

variable "cloudflare_zone_api_token" {
  description = "CF Zone token with permissions: Zone.Zone.read, include all zones"
  type        = string
}
