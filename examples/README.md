## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| backtrack\_window |  | string | n/a | yes |
| cluster\_identifier |  | string | n/a | yes |
| environment |  | string | n/a | yes |
| extra\_tags |  | map | n/a | yes |
| iam\_enabled |  | string | n/a | yes |
| instance\_count |  | string | n/a | yes |
| instance\_identifier |  | string | n/a | yes |
| kms\_alias\_aurora |  | string | n/a | yes |
| max\_allowed\_packet |  | string | n/a | yes |
| module\_config | Configuration options for the Module | map | n/a | yes |
| param\_name |  | string | n/a | yes |
| private\_db\_subnet\_ids | application private subnets for the vpc | list | n/a | yes |
| role |  | string | n/a | yes |
| secret\_name |  | string | n/a | yes |
| snapshot\_ind |  | string | n/a | yes |
| subnet\_name |  | string | n/a | yes |
| vpc\_id |  | string | n/a | yes |
| vpc\_security\_group\_ids |  | list | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| cluster\_id |  |
| endpoint |  |
| port |  |
| reader\_endpoint |  |

## Contributors to this project
- name: "Gyepi-Garbrah, Ekow (Tony) <a.gyepigarbrah@gmail.com>"