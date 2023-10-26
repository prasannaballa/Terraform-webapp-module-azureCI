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
  resource_group_name = "webappcimodule"
  location            = "CentralUS"
  app_service_plan = "webappmoduleplan"
  zone_redundant = "false"
  tier_value = "Basic"
  size_capacity =  "B1"
  docker_registry_url = "siva1245.azurecr.io"
  docker_server_username = "siva1245"
  docker_server_password = "GKBdj6FbYnQZ+7xWWWHHSxCRjq68fTVgWYv/2Cb03A+ACRALl5xC"
  app_service_name = "name"
  linux_version_value = "DOCKER|siva1245.azurecr.io/siva1245"
}
