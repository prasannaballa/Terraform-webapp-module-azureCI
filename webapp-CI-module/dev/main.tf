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
  resource_group_name = "acrqat"
  location            = "CentralUS"
  acr_name            = "myacrqat1234"            
}
