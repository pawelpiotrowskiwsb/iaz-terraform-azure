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


resource "azurerm_app_service_plan" "servicePlan" {
  name                = var.azurerm_service_plan_name
  location            = azurerm_resource_group.Pawel.location
  resource_group_name = azurerm_resource_group.Pawel.name
  os_type = var.os_type
  sku_name = var.sku_name
  
   sku {
    tier = var.sku_tier
    size = var.sku_size
  }
 }
 
 
 resource "azurerm_linux_function_app" "linuxFunction" {
  name                = var.azurerm_linux_function_app
  resource_group_name = azurerm_resource_group.Pawel.name
  location            = azurerm_resource_group.Pawel.location

  storage_account_name = azurerm_storage_account.Pawel.name
  service_plan_id      = azurerm_service_plan.Pawel.id

  site_config {}
}
