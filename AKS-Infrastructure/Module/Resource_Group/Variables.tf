variable "resource_group_info"{
    description = "Resource Group Name and Location"
    type = map(object({
        name     = string
        location = string
    }))
}

output "RG_Info" {
  value = {
    for key, rg in azurerm_resource_group.RG :
    key => {
      name     = rg.name
      location = rg.location
    }
  }
  
}