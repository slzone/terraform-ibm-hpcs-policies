# Apply HPCS Network and dual auth delete policies
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

