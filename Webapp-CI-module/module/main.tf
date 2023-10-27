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
resource "azurerm_app_service_plan" "concastplan" {
    name = var.app_service_plan
    location = var.location
    resource_group_name = "webappcimodulenew123"
    kind = "Linux"
    reserved = true
    sku {
    tier = var.tier_value
    size = var.size_capacity
    }

 tags = {
  "name" = "practice-appplan"
}
}
locals {
 env_variables = {
   DOCKER_REGISTRY_SERVER_URL            = var.docker_registry_url
   DOCKER_REGISTRY_SERVER_USERNAME       = var.docker_server_username
   DOCKER_REGISTRY_SERVER_PASSWORD       = var.docker_server_password
 } 
}
resource "azurerm_app_service" "concastapp" {
    name = var.app_service_name
    location = var.location
    resource_group_name = "webappcimodulenew123"
    app_service_plan_id = azurerm_app_service_plan.concastplan.id
    site_config {
    linux_fx_version = var.linux_version_value
    # registry_source="ACR"

  }
  
    app_settings = local.env_variables
    
}

output "id" {
  value = azurerm_app_service_plan.concastplan.id
}
