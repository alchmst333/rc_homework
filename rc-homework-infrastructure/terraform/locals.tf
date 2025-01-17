locals {
  file_path = "${path.module}./charts/rc-homework/values.yaml"
  chart_path = "${path.module}./charts/rc-homework/rc-homework-1.0.0.tgz"
  nginx_service_name = "${helm_release.nginx.metadata[0].name}-rc-homework"
} 

//rc-homework-infrastructure/charts/rc-homework/rc-homework-1.0.0.tgz