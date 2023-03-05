resource "azurerm_resource_group" "rg" {
  name     = "learnk8sResourceGroup"
  location = "northeurope"
}
resource "azurerm_kubernetes_cluster" "cluster" {
  name                = "learnk8scluster"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "learnk8scluster"

  default_node_pool {
    name       = "default"
    node_count = "1"
    vm_size    = "standard_d2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}

# resource "local_file" "kubeconfig" {
#   depends_on   = [azurerm_kubernetes_cluster.cluster]
#   filename     = "kubeconfig"
#   content      = azurerm_kubernetes_cluster.cluster.kube_config_raw
# }

resource "azurerm_kubernetes_cluster_node_pool" "mem" {
 kubernetes_cluster_id = azurerm_kubernetes_cluster.cluster.id
 name                  = "mem"
 node_count            = "1"
 vm_size               = "standard_d2_v2"
}
