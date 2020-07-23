/*

Script used within the module: "Demo: Creating a Storage Acount with Terraform"

It assumes that the resource group used for the storage account already exists. If you want to use a script that creates the resource group
as well as the please use the ./storage-account-with-resource-group folder 


*/

provider "azurerm" {
  version = ">2.0.0"
  features {}
}

resource "azurerm_storage_account" "skylinesstrg" {
  name                     = var.storageAccountName
  resource_group_name      = var.resourceGroupName
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "dev"
  }
}