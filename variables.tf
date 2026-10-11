variable "database_db_node_snapshots" {
  description = <<EOT
Map of database_db_node_snapshots, attributes below
Required:
    - dbnode_snapshot_id
    - mount_dbnode_id
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    dbnode_snapshot_id = string
    mount_dbnode_id    = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

