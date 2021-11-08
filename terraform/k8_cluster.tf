resource "vultr_kubernetes" "k8s_flow" {
  region  = "ewr"
  label   = "VultrFlow"
  version = "v1.20.11+1"

  node_pools {
    node_quantity = 5
    plan          = "vc2-2c-4gb"
  }
}
