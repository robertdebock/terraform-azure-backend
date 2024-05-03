# Some resources must have a unique name, so generate some random string.
resource "random_string" "default" {
  length  = 6
  number  = false
  special = false
  upper   = false
}

resource "azurerm_resource_group" "default" {
  name     = "${random_string.default.result}"
  location = "West Europe"
}

resource "azurerm_storage_account" "default" {
  name                     = "${random_string.default.result}"
  resource_group_name      = azurerm_resource_group.default.name
  location                 = azurerm_resource_group.default.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "default" {
  name                  = "${random_string.default.result}"
  storage_account_name  = azurerm_storage_account.default.name
  container_access_type = "private"
}
