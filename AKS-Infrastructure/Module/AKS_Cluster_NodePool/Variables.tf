variable "AKS_Cluster_Info" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    dns_prefix          = string
    default_node_pool = object({
      name       = string
      node_count = number
      vm_size    = string
    })
    identity = object({
      type = string
    })
  }))
}

variable "Node_Pool_Info" {
  type = map(object({
    name                  = string
    vm_size               = string
    node_count            = number
    AKS_Cluster_Name      = string
  }))
}