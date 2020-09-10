variable "cloudflare_dns_api_token" {
  type = string
}

variable "cloudflare_zone_api_token" {
  type = string
}

variable "force_renewal" {
  type    = bool
  default = false
}

variable "min_days_remaining" {
  type    = number
  default = 30
}

variable "account_key_pem" {
  type = string
}

variable "tls_private_key_algo" {
  type = string
}

variable "tls_private_key" {
  type = string
}

variable "dns_names" {
  type = list(string)
}

variable "common_name" {
  type = string
}
