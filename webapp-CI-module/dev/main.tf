terraform {
  backend "azurerm" {
    resource_group_name = "sivaaks"
    storage_account_name = "webacr"
    container_name = "acr"
    key = "terraform.storage"
    access_key = "SP7p/X+ZnFhAoufkEaBk+4cqKJdhIQpbrITUiQD5g1mWi2vLhbLxYdcMPafRIbULWBVrXdavUMjs+AStdYHRdg=="
  }
}
module "dev" {
  source      = "../module"
  prefix = "dev"
  resource_group_name = "webappcimodule123"
  location            = "South Central US"
  acr_name            = "myacrmoduledev123"            
}
