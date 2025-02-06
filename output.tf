output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

# output "vm_public_ips" {
#   description = "Public IP addresses of the virtual machines"
#   value       = { for k, v in azurerm_public_ip.public_ip : k => v.ip_address }
# }
output "vm_public_ips" {
  description = "Public IP addresses of the VMs"
  value = {
    for k, vm in var.vms : k => azurerm_public_ip.public_ip[k].ip_address
  }
}