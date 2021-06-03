variable "hpcs_instance_guid" {
  type        = string
  description = "HPCS Instance GUID"
}

variable "region" {
  type        = string
  description = "Location of HPCS Instance"
  default     = "us-south"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
  default     = "slz-rg"
}

variable "allowed_network_type" {
  type        = string
  description = "The network access policy to apply to your Hyper Protect Crypto Services instance. Acceptable values are public-and-private or private-only.After the network access policy is set to private-only, you cannot access your instance from the public network and cannot view or manage keys through the UI. However, you can still adjust the network setting later using the API or CLI"
  default     = "public-and-private"
}

variable "hpcs_port" {
  type        = number
  description = "HPCS service port, its port number from private / public endpoint of hpcs instance"
}

variable "dual_auth_delete" {
  type        = bool
  description = "Dual auth deletion policy enabled or not"
  default     = true
}
