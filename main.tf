provider "azurerm" {
  features {}

  client_id       = "785e245a-dd03-44fa-9a4f-3f2f6a444aca"
  client_secret   = "o5j8Q~YSek2IBQNaZ9F1zi2gYrvg4nBBxuyUdbO5"
  tenant_id       = "34911f0f-04cb-4b25-931e-6e89ba2bf285"
  subscription_id = "1b7af85e-c5fa-473a-9c31-b5adda6960ca"
}

resource "azurerm_resource_group" "mark1" {
  name = var.name[0]
  location=var.name[1]
}

resource "azurerm_virtual_network" "vnet1" {
  name = "vnet1.0"
  resource_group_name = azurerm_resource_group.mark1.name
  location = var.location
  address_space = ["10.0.0.0/16"]
}

