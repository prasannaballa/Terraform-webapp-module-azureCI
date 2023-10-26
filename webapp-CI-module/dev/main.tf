module "dev" {
  source      = "../module"
  prefix = "dev"
  resource_group_name = "aksqat"
  location            = "CentralUS"
  acr_name            = "myacrqat1234"            
}