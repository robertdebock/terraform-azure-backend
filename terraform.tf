terraform {
  backend "azurerm" {
      resource_group_name  = "rwojlu"
      storage_account_name = "rwojlu"
      container_name       = "rwojlu"
      key                  = "terraform.tfstate"
  }
}
