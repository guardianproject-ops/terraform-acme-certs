resource "acme_registration" "default" {
  account_key_pem = var.account_key_pem
  email_address   = var.email_address
}
