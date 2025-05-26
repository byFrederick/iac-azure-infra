resource "helm_release" "nginx_ingress_controller" {
  name             = var.release_name
  namespace        = var.namespace
  create_namespace = var.create_namespace
  repository       = var.chart_repo
  chart            = var.chart_name
  version          = var.chart_version
  values           = var.values

  # Auto-rollback on install/upgrade failure 
  atomic = true

  # Remove failed releases 
  cleanup_on_fail = true

  # Update chart dependencies before deployment 
  dependency_update = true
}