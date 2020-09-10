resource "tls_cert_request" "default" {
  key_algorithm   = var.tls_private_key_algo
  private_key_pem = var.tls_private_key

  subject {
    common_name = var.common_name
  }

  dns_names = var.dns_names
}

resource "acme_certificate" "default" {
  account_key_pem         = var.account_key_pem
  certificate_request_pem = tls_cert_request.default.cert_request_pem
  min_days_remaining      = var.force_renewal ? 999 : var.min_days_remaining
  recursive_nameservers   = ["1.1.1.1:53", "8.8.8.8:53", "9.9.9.9:53"]

  dns_challenge {
    provider = "cloudflare"

    config = {
      CF_DNS_API_TOKEN               = var.cloudflare_dns_api_token
      CF_ZONE_API_TOKEN              = var.cloudflare_zone_api_token
      CLOUDFLARE_PROPAGATION_TIMEOUT = 1800
      CLOUDFLARE_POLLING_INTERVAL    = 10
      CLOUDFLARE_TTL                 = 120
    }
  }
}
