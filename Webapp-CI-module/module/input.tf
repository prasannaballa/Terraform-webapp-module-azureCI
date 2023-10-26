variable "subscription_id" {
    type = string
    default = "e91b7229-3664-4497-abb3-ad35e96b0d77"
    description = "PROD subcription id"
  
}

variable "client_id" {
    type = string
    default = "f4bffb76-fb3d-42fa-9874-ebdbb4e49526"
    description = "client id"
  
}

variable "client_secret" {
    type = string
    default = "_uA8Q~iwIbPpY560hDwbwuhWpg4MQHjHaHZ44bBr"  
    description = "client secret"
  
}

variable "tenant_id" {
    type = string
    default = "48303f89-d7d2-41b5-8ae7-e81df895bdb4"
    description = "tenant id"
  
}
variable "location" {
  type        = string
  default = "East US"
  description = "Rg location"
}
variable "resource_group_name" {
  type        = string
  description = "RG name in Azure"
}

variable "prefix" {
  type = string
  description = "The prefix used for all resources in this example"
}

variable "app_service_plan" {
  type        = string
  description = "serviceplan name"
}

variable "zone_redundant" {
  type        = string
  description = "true or false"
}

variable "tier_value" {
  type        = string
  description = "value"
}

variable "size_capacity" {
  type        = string
  description = "capacity of size"
}

variable "docker_registry_url" {
  type        = string
  description = "registerurl"
}
variable "docker_server_username" {
  type        = string
  description = "server name"
}
variable "docker_server_password" {
  type        = string
  description = "server password"
}

variable "app_service_name"{
  type        = string
  description = "give webname"
}

variable "linux_version_value"{
  type        = string
  description = "give acr name and server"
}
