output "config" {
  description = "Kube Config file for the K8s cluster"
  value       = vultr_kubernetes.k8s_flow.kube_config
}
