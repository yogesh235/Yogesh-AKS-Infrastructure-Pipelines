variable "RG_Info" {
  type = string
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
    name = string
    storage_account_name = string
    container_access_type = string
  }))
}