variable "vms" {
  type = map(object({
    name     = string
    enabled  = bool
    vm_size  = string
  }))
  default = {
    "vm1" = { name = "Masteer", enabled = true, vm_size = "Standard_DS1_v2" }
    "vm2" = { name = "Slave", enabled = true, vm_size = "Standard_DS1_v2" }
  }
}


variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "master-rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "username" {
  type        = string
  description = "The username for the local account that will be created on the new VM."
  default     = "azureuser"
}
variable "admin_password" {
  description = "Admin password for the VMs"
  type        = string
  sensitive   = true
}
