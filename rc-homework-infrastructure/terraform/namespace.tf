resource "kubernetes_namespace" "homework" {
  metadata {
    name = var.namespace
  }
}
