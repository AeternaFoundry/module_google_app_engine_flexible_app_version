output "app_engine_flexible_app_versions_id" {
  description = "Map of id values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no id are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "app_engine_flexible_app_versions_api_config" {
  description = "Map of api_config values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no api_config are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => one(v.api_config) if v.api_config != null && length(v.api_config) > 0 }
}
output "app_engine_flexible_app_versions_automatic_scaling" {
  description = "Map of automatic_scaling values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no automatic_scaling are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => one(v.automatic_scaling) if v.automatic_scaling != null && length(v.automatic_scaling) > 0 }
}
output "app_engine_flexible_app_versions_beta_settings" {
  description = "Map of beta_settings values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no beta_settings are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => v.beta_settings if v.beta_settings != null && length(v.beta_settings) > 0 }
}
output "app_engine_flexible_app_versions_default_expiration" {
  description = "Map of default_expiration values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no default_expiration are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => v.default_expiration if v.default_expiration != null && length(v.default_expiration) > 0 }
}
output "app_engine_flexible_app_versions_delete_service_on_destroy" {
  description = "Map of delete_service_on_destroy values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no delete_service_on_destroy are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => v.delete_service_on_destroy if v.delete_service_on_destroy != null }
}
output "app_engine_flexible_app_versions_deletion_policy" {
  description = "Map of deletion_policy values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no deletion_policy are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "app_engine_flexible_app_versions_deployment" {
  description = "Map of deployment values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no deployment are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => one(v.deployment) if v.deployment != null && length(v.deployment) > 0 }
}
output "app_engine_flexible_app_versions_endpoints_api_service" {
  description = "Map of endpoints_api_service values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no endpoints_api_service are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => one(v.endpoints_api_service) if v.endpoints_api_service != null && length(v.endpoints_api_service) > 0 }
}
output "app_engine_flexible_app_versions_entrypoint" {
  description = "Map of entrypoint values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no entrypoint are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => one(v.entrypoint) if v.entrypoint != null && length(v.entrypoint) > 0 }
}
output "app_engine_flexible_app_versions_env_variables" {
  description = "Map of env_variables values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no env_variables are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => v.env_variables if v.env_variables != null && length(v.env_variables) > 0 }
}
output "app_engine_flexible_app_versions_flexible_runtime_settings" {
  description = "Map of flexible_runtime_settings values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no flexible_runtime_settings are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => one(v.flexible_runtime_settings) if v.flexible_runtime_settings != null && length(v.flexible_runtime_settings) > 0 }
}
output "app_engine_flexible_app_versions_handlers" {
  description = "Map of handlers values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no handlers are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => v.handlers if v.handlers != null && length(v.handlers) > 0 }
}
output "app_engine_flexible_app_versions_inbound_services" {
  description = "Map of inbound_services values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no inbound_services are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => v.inbound_services if v.inbound_services != null && length(v.inbound_services) > 0 }
}
output "app_engine_flexible_app_versions_instance_class" {
  description = "Map of instance_class values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no instance_class are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => v.instance_class if v.instance_class != null && length(v.instance_class) > 0 }
}
output "app_engine_flexible_app_versions_liveness_check" {
  description = "Map of liveness_check values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no liveness_check are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => one(v.liveness_check) if v.liveness_check != null && length(v.liveness_check) > 0 }
}
output "app_engine_flexible_app_versions_manual_scaling" {
  description = "Map of manual_scaling values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no manual_scaling are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => one(v.manual_scaling) if v.manual_scaling != null && length(v.manual_scaling) > 0 }
}
output "app_engine_flexible_app_versions_name" {
  description = "Map of name values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no name are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "app_engine_flexible_app_versions_network" {
  description = "Map of network values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no network are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => one(v.network) if v.network != null && length(v.network) > 0 }
}
output "app_engine_flexible_app_versions_nobuild_files_regex" {
  description = "Map of nobuild_files_regex values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no nobuild_files_regex are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => v.nobuild_files_regex if v.nobuild_files_regex != null && length(v.nobuild_files_regex) > 0 }
}
output "app_engine_flexible_app_versions_noop_on_destroy" {
  description = "Map of noop_on_destroy values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no noop_on_destroy are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => v.noop_on_destroy if v.noop_on_destroy != null }
}
output "app_engine_flexible_app_versions_project" {
  description = "Map of project values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no project are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => v.project if v.project != null && length(v.project) > 0 }
}
output "app_engine_flexible_app_versions_readiness_check" {
  description = "Map of readiness_check values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no readiness_check are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => one(v.readiness_check) if v.readiness_check != null && length(v.readiness_check) > 0 }
}
output "app_engine_flexible_app_versions_resources" {
  description = "Map of resources values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no resources are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => one(v.resources) if v.resources != null && length(v.resources) > 0 }
}
output "app_engine_flexible_app_versions_runtime" {
  description = "Map of runtime values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no runtime are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => v.runtime if v.runtime != null && length(v.runtime) > 0 }
}
output "app_engine_flexible_app_versions_runtime_api_version" {
  description = "Map of runtime_api_version values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no runtime_api_version are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => v.runtime_api_version if v.runtime_api_version != null && length(v.runtime_api_version) > 0 }
}
output "app_engine_flexible_app_versions_runtime_channel" {
  description = "Map of runtime_channel values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no runtime_channel are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => v.runtime_channel if v.runtime_channel != null && length(v.runtime_channel) > 0 }
}
output "app_engine_flexible_app_versions_runtime_main_executable_path" {
  description = "Map of runtime_main_executable_path values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no runtime_main_executable_path are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => v.runtime_main_executable_path if v.runtime_main_executable_path != null && length(v.runtime_main_executable_path) > 0 }
}
output "app_engine_flexible_app_versions_service" {
  description = "Map of service values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no service are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => v.service if v.service != null && length(v.service) > 0 }
}
output "app_engine_flexible_app_versions_service_account" {
  description = "Map of service_account values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no service_account are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => v.service_account if v.service_account != null && length(v.service_account) > 0 }
}
output "app_engine_flexible_app_versions_serving_status" {
  description = "Map of serving_status values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no serving_status are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => v.serving_status if v.serving_status != null && length(v.serving_status) > 0 }
}
output "app_engine_flexible_app_versions_version_id" {
  description = "Map of version_id values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no version_id are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => v.version_id if v.version_id != null && length(v.version_id) > 0 }
}
output "app_engine_flexible_app_versions_vpc_access_connector" {
  description = "Map of vpc_access_connector values across all app_engine_flexible_app_versions, keyed the same as var.app_engine_flexible_app_versions except keys with no vpc_access_connector are omitted"
  value       = { for k, v in google_app_engine_flexible_app_version.app_engine_flexible_app_versions : k => one(v.vpc_access_connector) if v.vpc_access_connector != null && length(v.vpc_access_connector) > 0 }
}

