/*
This script will create the Resource Group and then deploy a storage account.
*/

provider "azurerm" {
  version = ">2.0.0"
  features {}
}

resource "azurerm_storage_account" "skylinesstrg" {
  name                     = var.storageAccountName
  resource_group_name      = azurerm_resource_group.skylinesrg.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "dev"
  }
}

resource "azurerm_resource_group" "skylinesrg" {
  name                     = var.resourceGroupName
  location                 = var.location

  tags = {
    environment = "dev"
  }
}