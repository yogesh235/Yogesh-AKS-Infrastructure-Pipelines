data "azurerm_resource_group" "RG_Info" {
  name     = var.RG_Info
}

resource "azurerm_storage_account" "Stg_Info" {
  for_each = var.storage_Info
  
  name                     = each.value.name
  resource_group_name      = data.azurerm_resource_group.RG_Info.name
  location                 = data.azurerm_resource_group.RG_Info.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}

resource "azurerm_storage_container" "container_Info" {
  for_each = var.container

  name                  = each.value.name
  storage_account_name  = azurerm_storage_account.Stg_Info[each.value.storage_account_name].name
  container_access_type = each.value.container_access_type
}