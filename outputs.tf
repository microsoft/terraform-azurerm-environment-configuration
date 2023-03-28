output "private_links" {
  value = local.private_links[var.arm_environment]
}

output "storage_suffix" {
  value = local.suffixes[var.arm_environment].storage_endpoint_suffix
}

output "acr_suffix" {
  value = local.suffixes[var.arm_environment].acr_server_suffix
}

output "web_app_suffix" {
  value = local.suffixes[var.arm_environment].web_app_suffix
}

output "active_directory_endpoint" {
  value = local.endpoints[var.arm_environment].active_directory_endpoint
}

output "microsoft_graph_endpoint" {
  value = local.endpoints[var.arm_environment].microsoft_graph_endpoint
}

output "resource_manager_endpoint" {
  value = local.endpoints[var.arm_environment].resource_manager_endpoint
}
