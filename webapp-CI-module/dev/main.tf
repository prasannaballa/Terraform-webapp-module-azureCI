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
  resource_group_name = "acrqat"
  location            = "CentralUS"
  acr_name            = "myacrqat1234"            
}
