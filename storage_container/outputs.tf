output "resource_group_name" {
  description = "The name of the resource group in which the storage account is created."
  value       = azurerm_resource_group.default.name
}

output "storage_account_name" {
  description = "The name of the storage account."
  value       = azurerm_storage_account.default.name
}

output "container_name" {
  description = "The name of the storage container."
  value       = azurerm_storage_container.default.name
}
