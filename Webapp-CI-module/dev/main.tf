terraform {
  backend "azurerm" {
    resource_group_name = "sivaaks"
    storage_account_name = "webacr"
    container_name = "webacrmodule"
    key = "terraform.storage"
    access_key = "SP7p/X+ZnFhAoufkEaBk+4cqKJdhIQpbrITUiQD5g1mWi2vLhbLxYdcMPafRIbULWBVrXdavUMjs+AStdYHRdg=="
  }
}
module "dev" {
  source      = "../module"
  prefix = "dev"
  location            = "South Central US "
  app_service_plan = "webappmoduleplan"
  tier_value = "Basic"
  size_capacity =  "small"
  docker_registry_url = "myacrmoduledev123.azurecr.io"
  docker_server_username = "myacrmoduledev123"
  docker_server_password = "J9OKTkV3XhR3nyKlAPvkEvUfB8xMgD6aM7YeOEjWs/+ACRBE4hLI"
  app_service_name = "webdevci"
  linux_version_value = "DOCKER|myacrmoduledev123.azurecr.io/myacrmoduledev123"
}
