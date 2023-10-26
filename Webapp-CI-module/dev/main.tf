terraform {
  backend "azurerm" {
    resource_group_name = "aks"
    storage_account_name = "webdevci"
    container_name = "webci"
    key = "terraform.storage"
    access_key = "z8GC6s11FEQE13cRuYF5jSKBSWVCsbb4auh83h2d5El7RST9DVMEH00whWkbfKiRhhkKJx6SO7tE+AStkF2a4A=="
  }
}
module "dev" {
  source      = "../module"
  prefix = "dev"
  resource_group_name = "sivaaks"
  location            = "Central India"
  app_service_plan = "webappmoduleplan"
  reserved_name  = " true"
  zone_redundant = "false"
  tier_value = "Basic"
  size_capacity =  "B1"
  capacity_value = "false"
  docker_registry_url = "siva1245.azurecr.io"
  docker_server_username = "siva1245"
  docker_server_password = "GKBdj6FbYnQZ+7xWWWHHSxCRjq68fTVgWYv/2Cb03A+ACRALl5xC"
  app_service_name = "name"
  linux_version_value = "DOCKER|siva1245.azurecr.io/siva1245"
}
