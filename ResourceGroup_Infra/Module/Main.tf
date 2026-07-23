resource "azurerm_resource_group" "RG_Info" {
  name     = var.Resource_Vars.name
  location = var.Resource_Vars.location
}