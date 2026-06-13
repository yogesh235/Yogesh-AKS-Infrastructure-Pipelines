resource "azurerm_resource_group" "RG" {
  for_each = var.resource_group_info
  name     = each.value.name
  location = each.value.location
  
}