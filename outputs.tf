output "private_links" {
  value = local.private_links[var.arm_environment]
}

output "storage_endpoint_suffix" {
  value = local.storage_endpoint_suffix[var.arm_environment]
}

output "acr_server_suffix" {
  value = local.acr_server_suffix[var.arm_environment]
}

output "web_app_suffix" {
  value = local.web_app_suffix[var.arm_environment]
}

output "active_directory_endpoint" {
  value = local.active_directory_endpoint[var.arm_environment]
}

output "microsoft_graph_endpoint" {
  value = local.microsoft_graph_endpoint[var.arm_environment]
}

output "resource_manager_endpoint" {
  value = local.resource_manager_endpoint[var.arm_environment]
}
