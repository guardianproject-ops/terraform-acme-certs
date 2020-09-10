module "account" {
  source = "./account"

  account_key_pem = var.account_key_pem
  email_address   = var.email_address
}

module "cert" {
  source = "./cert"


  for_each = var.certs

  common_name          = each.value.common_name
  dns_names            = each.value.dns_names
  tls_private_key      = each.value.tls_private_key
  tls_private_key_algo = each.value.tls_private_key_algo
  force_renewal        = each.value.force_renewal

  account_key_pem           = module.account.account_key_pem
  cloudflare_dns_api_token  = var.cloudflare_dns_api_token
  cloudflare_zone_api_token = var.cloudflare_zone_api_token

  depends_on = [module.account]
}
