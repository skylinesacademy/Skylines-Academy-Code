/*
Script used within the module: "Demo: Creating a Dev Environment in Terraform"

This deploys the Resource Group, once you have updated the script as shown in the module
*/

provider "azurerm" {
    version = "1.38.0"
    subscription_id = var.subscriptionID
}

resource "azurerm_resource_group" "DevRG" {
  name     = var.resourceGroupName
  location = var.location

  tags = {
    environment = "Dev"
  }
}