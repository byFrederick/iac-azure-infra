output "release_name" {
  description = "Helm release name"
  value       = helm_release.nginx_ingress_controller.name
}

output "namespace" {
  description = "Namespace where the ingress controller was installed"
  value       = helm_release.nginx_ingress_controller.namespace
}

output "chart" {
  description = "The chart identifier used"
  value       = helm_release.nginx_ingress_controller.chart
}

output "chart_version" {
  description = "Chart version deployed"
  value       = helm_release.nginx_ingress_controller.version
}

output "status" {
  description = "Helm release status (e.g. deployed)"
  value       = helm_release.nginx_ingress_controller.status
}

output "app_version" {
  description = "App version"
  value       = helm_release.nginx_ingress_controller.metadata.app_version
}
