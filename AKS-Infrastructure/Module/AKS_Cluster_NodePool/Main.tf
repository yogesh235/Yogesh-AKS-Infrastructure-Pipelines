resource "azurerm_kubernetes_cluster" "AKS_Cluster" {
  for_each            = var.AKS_Cluster_Info
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  dns_prefix          = each.value.dns_prefix

  default_node_pool {
    name       = each.value.default_node_pool.name
    node_count = each.value.default_node_pool.node_count
    vm_size    = each.value.default_node_pool.vm_size
  }


  identity {
    type = each.value.identity.type
  }

}

resource "azurerm_kubernetes_cluster_node_pool" "Node_Info" {
  for_each              = var.Node_Pool_Info
  name                  = each.value.name
  kubernetes_cluster_id = azurerm_kubernetes_cluster.AKS_Cluster[each.value.AKS_Cluster_Name].id
  vm_size               = each.value.vm_size
  node_count            = each.value.node_count
}