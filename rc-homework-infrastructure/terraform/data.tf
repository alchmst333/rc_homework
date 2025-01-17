data "kubernetes_service" "nginx_service" {
  depends_on = [helm_release.nginx]

  metadata {
    name      = local.nginx_service_name
    namespace = var.namespace
  }
}

data "kubernetes_namespace" "namespace" {
  metadata {
    name = var.namespace
  }
}
