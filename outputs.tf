output "certs" {
  sensitive = true
  value     = module.cert
}

output "account" {
  sensitive = true
  value     = module.account
}
