module "Resource_Group_Module" {
  source = "../Module/Resource_Group"
  resource_group_info = {
    "RG-Platform-Dev-AKS" = {
      name     = "RG-Platform-Dev-AKS"
      location = "eastus"
    }
    "RG-Platform-Prod-AKS" = {
      name     = "RG-Platform-Prod-AKS"
      location = "eastus"
    }
  }
}

module "AKS_Cluster_NodePool_Module" {
  source = "../Module/AKS_Cluster_NodePool"
  AKS_Cluster_Info = {
    "AKS-Cluster-Dev" = {
      name                = "Cluster01"
      location            = module.Resource_Group_Module.RG_Info["RG-Platform-Dev-AKS"].location
      resource_group_name = module.Resource_Group_Module.RG_Info["RG-Platform-Dev-AKS"].name
      dns_prefix          = "aksclusterdev"
      default_node_pool = {
        name       = "default"
        node_count = 1
        vm_size    = "Standard_FX2ms_v2"
      }
      identity = {
        type = "SystemAssigned"
      }
    }
  }
  Node_Pool_Info = {
    "Node-Pool-Dev" = {
      name                  = "nodepooldev"
      vm_size               = "Standard_FX2ms_v2"
      node_count            = 1
      AKS_Cluster_Name      = "AKS-Cluster-Dev"
    }
  }
  
}