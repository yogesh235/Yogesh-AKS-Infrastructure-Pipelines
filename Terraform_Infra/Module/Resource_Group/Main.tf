resource "azurerm_resource_group" "rg" {
  for_each = var.RG_Var
  name     = each.value.name
  location = each.value.location
}