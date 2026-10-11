resource "oci_database_db_node_snapshot" "database_db_node_snapshots" {
  for_each = var.database_db_node_snapshots

  dbnode_snapshot_id = each.value.dbnode_snapshot_id
  mount_dbnode_id    = each.value.mount_dbnode_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

