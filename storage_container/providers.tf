terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.1.2"
    }
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.102.0"
    }
  }
}

provider "azurerm" {
  features {}
}
