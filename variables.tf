variable "postgres_projects_lookup" {
  description = <<EOT
Map of postgres_projects_lookup, attributes below
Optional:
    - page_size
    - provider_config
    - show_deleted
EOT

  type = map(object({
    page_size = optional(number)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    show_deleted = optional(bool)
  }))
}

