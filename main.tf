data "databricks_postgres_projects" "postgres_projects_lookup" {
  for_each = var.postgres_projects_lookup

  page_size       = each.value.page_size
  provider_config = each.value.provider_config
  show_deleted    = each.value.show_deleted
}

