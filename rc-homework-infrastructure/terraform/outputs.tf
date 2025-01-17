output "namespace_name" {
  description = "The namespace where the NGINX release is deployed"
  value       = data.kubernetes_namespace.namespace.metadata[0].name
}

output "helm_release_name" {
  description = "The name of the Helm release"
  value       = helm_release.nginx.name
}

output "nginx_service_name" {
  description = "The name of the Kubernetes service created for the NGINX release"
  value       = "${helm_release.nginx.metadata[0].name}-rc-homework"
}

output "nginx_replicas" {
  description = "The number of replicas for the NGINX deployment"
  value       = yamldecode(helm_release.nginx.values[0]).replicaCount
}

output "nginx_deployment_name" {
  description = "The name of the Kubernetes deployment for NGINX"
  value       = "${helm_release.nginx.metadata[0].name}-rc-homework"
}

output "nginx_service_cluster_ip" {
  description = "The ClusterIP of the NGINX service"
  value       = data.kubernetes_service.nginx_service.spec[0].cluster_ip
}

output "nginx_service_ports" {
  description = "The ports exposed by the NGINX service"
  value       = data.kubernetes_service.nginx_service.spec[0].port[0].port
}

output "nginx_resource_limits" {
  description = "The resource limits for the NGINX pods"
  value       = yamldecode(helm_release.nginx.values[0]).resources.limits
}

output "nginx_resource_requests" {
  description = "The resource requests for the NGINX pods"
  value       = yamldecode(helm_release.nginx.values[0]).resources.requests
}

output "nginx_helm_chart_version" {
  description = "The version of the Helm chart used for the NGINX release"
  value       = replace(split("-", basename(helm_release.nginx.chart))[2], ".tgz", "")
}

output "namespace_resource_count" {
  description = "The total count of resources in the namespace"
  value       = length(data.kubernetes_namespace.namespace.metadata)
}
