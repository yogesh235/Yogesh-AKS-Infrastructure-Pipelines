RG_Info = "DEV-RG"

Recovery_Service = {
  "Recovery_Service_Dev" = {
    name = "RecoveryService1"
    sku  = "Standard"
  }
  "Recovery_Service_Prod" = {
    name = "RecoveryService2"
    sku  = "Standard"
  }
}

storage_Info = {
  "Storage_Dev" = {
    name                     = "statefileinfodev"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
  "Storage_Prod" = {
    name                     = "statefileinfoprod"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

container = {
  "Container_Dev" = {
    Recovery_Var = "Recovery_Service_Dev"
    Storage_Var  = "Storage_Dev"
  }
  "Container_Prod" = {
    Recovery_Var = "Recovery_Service_Prod"
    Storage_Var  = "Storage_Prod"
  }
}