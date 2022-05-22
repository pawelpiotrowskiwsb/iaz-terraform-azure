resource "azurem_resource_group" "Pawel"{
	name = var.azurem_resource_group-name
	location = var.location
}


resource "azurem_storage_account" "usersStorage" {
	name = var.azurem_resource_group-name
	resource_group_name = azurem_resource_group.Pawel.name
	location = azurem_resource_group_location.Pawel.location
	account_tier = var.account_tier
	account_kind = var.account_kind
	account_replication_type = var.account_replication_type
}


resource "azurerm_storage_container" "Pawel" {
  name                  = var.azurerm_storage_container_name
  storage_account_name  = azurerm_storage_account.Pawel.name
  container_access_type = var.container_access_type
}


resource "azurerm_storage_blob" "Pawel" {
  name                   = var.azurerm_storage_blob_name
  storage_account_name   = azurerm_storage_account.example.name
  storage_container_name = azurerm_storage_container.example.name
  type                   = var.azurerm_storage_blob_type
}