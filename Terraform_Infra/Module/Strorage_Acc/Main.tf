data "azurerm_resource_group" "RG_Dev" {
  name = var.RG_Info
}

resource "azurerm_recovery_services_vault" "vault" {
  for_each            = var.Recovery_Service
  name                = each.value.name
  location            = data.azurerm_resource_group.RG_Dev.location
  resource_group_name = data.azurerm_resource_group.RG_Dev.name
  sku                 = each.value.sku
}

resource "azurerm_storage_account" "Stroage" {
  for_each                 = var.storage_Info
  name                     = each.value.name
  location                 = data.azurerm_resource_group.RG_Dev.location
  resource_group_name      = data.azurerm_resource_group.RG_Dev.name
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}

resource "azurerm_backup_container_storage_account" "container" {
  for_each            = var.container
  resource_group_name = data.azurerm_resource_group.RG_Dev.name
  recovery_vault_name = azurerm_recovery_services_vault.vault[each.value.Recovery_Var].name
  storage_account_id  = azurerm_storage_account.Stroage[each.value.Storage_Var].id
}