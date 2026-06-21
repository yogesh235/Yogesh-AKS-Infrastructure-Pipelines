variable "RG_Info" {
  type = string
}

variable "Recovery_Service" {
  type = map(object({
    name = string
    sku  = string
  }))
}

variable "storage_Info" {
  type = map(object({
    name                     = string
    account_tier             = string
    account_replication_type = string
  }))
}

variable "container" {
  type = map(object({
    Recovery_Var = string
    Storage_Var  = string
  }))
}