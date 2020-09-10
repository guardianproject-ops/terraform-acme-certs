output "certificate_pem" {
  value = coalesce(
    join(",", acme_certificate.default.*.certificate_pem),
  )
}

output "private_key_pem" {
  value     = var.tls_private_key
  sensitive = true
}

output "issuer_pem" {
  value = coalesce(
    join(",", acme_certificate.default.*.issuer_pem),
  )
}
