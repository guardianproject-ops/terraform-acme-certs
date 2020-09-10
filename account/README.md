# Generating acme accounts

It takes as input 

* `email` - the email address used to register the LE account
* `key` - an RSA private key that represents the LE account
* `server_url` - The ACME API url


## Generating the config

You need to generate two config files:

* `../_data/acme-account.enc.yaml`

Edit them with `sops`.

The contents should be:

```yaml
# for dev/prod OR...
server_url: https://acme-v02.api.letsencrypt.org/directory

email: you@example.com
key: |
    -----BEGIN RSA PRIVATE KEY-----
    MIIJ .......
    -----END RSA PRIVATE KEY-----
```

Generate the private keys with `openssl genrsa 4096`. Simply paste it in with
the correct indentation.

