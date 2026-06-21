RG_Info = "RG-Storage"

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
    name = "stateinfodev"
    storage_account_name = "Storage_Dev"
    container_access_type = "private"
  }
  "Container_Prod" = {
    name = "stateinfoprod"
    storage_account_name = "Storage_Prod"
    container_access_type = "private"
  }
}