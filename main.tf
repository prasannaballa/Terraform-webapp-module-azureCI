terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}
provider "azurerm" {
    features {
      
    }
    subscription_id = var.subscription_id
    client_id = var.client_id
    client_secret = var.client_secret
    tenant_id =var.tenant_id


}
resource "azurerm_resource_group" "testrglabel" {
    name = var.resource_group_name
    location = var.location
    tags = {
      "name" = "practice-rsg"

    }
}

resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.testrglabel.name
  location            = var.location
  sku                 = "Basic"
  admin_enabled       = false

  
}