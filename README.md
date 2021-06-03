# Network and auth policies for a HPCS instance

This is a collection of modules that sets policies on HPCS instance.

## Terraform versions

Terraform 0.13.

## Assumptions

* The HPCS module is initialized and ready to be used

## Example usage

### Apply HPCS Network type, Dual deletetion Authorization policy

```terraform
module "hpcs_policies" {
  source               = "git::ssh://git@github.com/slzone/terraform-ibm-hpcs-initialisation.git//modules/hpcs-policies"
  depends_on           = [module.hpcs_init]
  region               = var.region
  resource_group_name  = var.resource_group_name
  hpcs_instance_guid   = var.hpcs_instance_guid
  allowed_network_type = var.allowed_network_type
  hpcs_port            = var.hpcs_port
  dual_auth_delete     = var.dual_auth_delete
}
```

### Inputs

| Name              | Description                                                             | Type     | Required |
|-------------------|-------------------------------------------------------------------------|----------|----------|
| region           | Location of HPCS Instance.                                               | `string` | Yes      |
| resource_group_name    | CResource group name.                                              | `string` | Yes      |
| allowed_network_type       | Allowed network type.                                          | `string` | Yes      |
| hpcs_port    | HPCS service port number.                                                    | `string` | Yes      |
| dual_auth_delete| Dual auth deletion policy enabled or not.                                                     | `bool` | Yes      |

## Notes for developers

* Clone the repository:

```bash
  git clone git@github.com:slzone/terraform-ibm-hpcs-initialization.git
```
