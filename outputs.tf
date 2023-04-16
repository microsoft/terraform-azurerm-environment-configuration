output "private_links" {
  value = local.private_links[var.arm_environment]
}

output "storage_suffix" {
  value = local.suffixes[var.arm_environment].storage
}

output "acr_suffix" {
  value = local.suffixes[var.arm_environment].acr
}

output "web_app_suffix" {
  value = local.suffixes[var.arm_environment].web_app
}

output "active_directory_endpoint" {
  value = local.endpoints[var.arm_environment].active_directory
}

output "microsoft_graph_endpoint" {
  value = local.endpoints[var.arm_environment].microsoft_graph
}

output "resource_manager_endpoint" {
  value = local.endpoints[var.arm_environment].resource_manager
}

output "aml_studio_endpoint" {
  value = local.endpoints[var.arm_environment].aml_studio
}