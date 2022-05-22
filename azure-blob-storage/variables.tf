variable "azurem_resource_group-name" {
	type = string
	default = "Pawel75791"
}
variable "azurem_resource_group_location" {
	type = string
	default = "North Europe"
}
variable "account_kind" {
  type = string
  default = "Storage"
}
variable "account_tier" {
	type = string
  default = "Standard"
}
variable "account_replication_type" {
	type = string
	default = "LRS"
}
variable "azurerm_storage_container_name" {
    type = string
    default = "containerName"
}
variable "container_access_type" {
    type = string
    default = "blob"
}
variable "azurerm_storage_blob_name" {
    type = string
    default = "storageName"
}
variable "azurerm_storage_blob_type" {
    type = string
    default = "Block"
  
}