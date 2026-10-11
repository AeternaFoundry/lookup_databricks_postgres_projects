output "postgres_projects_lookup_page_size" {
  description = "Map of page_size values across all postgres_projects_lookup, keyed the same as var.postgres_projects_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_postgres_projects.postgres_projects_lookup : k => v.page_size if v.page_size != null }
}
output "postgres_projects_lookup_projects" {
  description = "Map of projects values across all postgres_projects_lookup, keyed the same as var.postgres_projects_lookup except keys with no projects are omitted"
  value       = { for k, v in data.databricks_postgres_projects.postgres_projects_lookup : k => v.projects if v.projects != null && length(v.projects) > 0 }
}
output "postgres_projects_lookup_provider_config" {
  description = "Map of provider_config values across all postgres_projects_lookup, keyed the same as var.postgres_projects_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_postgres_projects.postgres_projects_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "postgres_projects_lookup_show_deleted" {
  description = "Map of show_deleted values across all postgres_projects_lookup, keyed the same as var.postgres_projects_lookup except keys with no show_deleted are omitted"
  value       = { for k, v in data.databricks_postgres_projects.postgres_projects_lookup : k => v.show_deleted if v.show_deleted != null }
}

