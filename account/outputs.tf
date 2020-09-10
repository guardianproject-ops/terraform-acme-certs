output "account_id" {
  value = acme_registration.default.id
}

output "registration_url" {
  value = acme_registration.default.registration_url
}

output "account_key_pem" {
  value = var.account_key_pem
}
