resource "helm_release" "nginx" {
  name       = var.name
  chart      = local.chart_path
  version    = var.chart_version
  namespace = kubernetes_namespace.homework.metadata[0].name
  values = [file(local.file_path)]

}