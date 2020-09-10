## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| acme\_account\_key\_pem |  | string | n/a | yes |
| acme\_account\_staging\_key\_pem |  | string | n/a | yes |
| attributes | Additional attributes (e.g. `1`) | list | `<list>` | no |
| cloudflare\_email |  | string | n/a | yes |
| cloudflare\_token |  | string | n/a | yes |
| common\_name |  | string | n/a | yes |
| delimiter | Delimiter to be used between `namespace`, `environment`, `name`, and `attributes` | string | `"-"` | no |
| dns\_names |  | list | n/a | yes |
| environment | environment (e.g. `prod`, `dev`, `staging`, `infra`) | string | n/a | yes |
| name | Name  (e.g. `app` or `cluster`) | string | n/a | yes |
| namespace | Namespace (e.g. `keanu`) | string | n/a | yes |
| tags | Additional tags (e.g. map(`BusinessUnit`,`XYZ`) | map | `<map>` | no |
| tls\_private\_key |  | string | n/a | yes |
| tls\_private\_key\_algo |  | string | n/a | yes |
| tls\_staging\_private\_key |  | string | n/a | yes |
| tls\_staging\_private\_key\_algo |  | string | n/a | yes |
| use\_production |  | string | `"0"` | no |

## Outputs

| Name | Description |
|------|-------------|
| certificate\_pem |  |
| issuer\_pem |  |
| private\_key\_pem |  |

