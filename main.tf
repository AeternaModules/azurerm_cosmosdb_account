resource "azurerm_cosmosdb_account" "cosmosdb_accounts" {
  for_each = var.cosmosdb_accounts

  location                              = each.value.location
  name                                  = each.value.name
  offer_type                            = each.value.offer_type
  resource_group_name                   = each.value.resource_group_name
  partition_merge_enabled               = each.value.partition_merge_enabled
  network_acl_bypass_ids                = each.value.network_acl_bypass_ids
  network_acl_bypass_for_azure_services = each.value.network_acl_bypass_for_azure_services
  multiple_write_locations_enabled      = each.value.multiple_write_locations_enabled
  mongo_server_version                  = each.value.mongo_server_version
  minimal_tls_version                   = each.value.minimal_tls_version
  managed_hsm_key_id                    = each.value.managed_hsm_key_id
  local_authentication_disabled         = each.value.local_authentication_disabled
  kind                                  = each.value.kind
  is_virtual_network_filter_enabled     = each.value.is_virtual_network_filter_enabled
  public_network_access_enabled         = each.value.public_network_access_enabled
  ip_range_filter                       = each.value.ip_range_filter
  free_tier_enabled                     = each.value.free_tier_enabled
  default_identity_type                 = each.value.default_identity_type
  create_mode                           = each.value.create_mode
  burst_capacity_enabled                = each.value.burst_capacity_enabled
  automatic_failover_enabled            = each.value.automatic_failover_enabled
  analytical_storage_enabled            = each.value.analytical_storage_enabled
  access_key_metadata_writes_enabled    = each.value.access_key_metadata_writes_enabled
  key_vault_key_id                      = each.value.key_vault_key_id
  tags                                  = each.value.tags

  consistency_policy {
    consistency_level       = each.value.consistency_policy.consistency_level
    max_interval_in_seconds = each.value.consistency_policy.max_interval_in_seconds
    max_staleness_prefix    = each.value.consistency_policy.max_staleness_prefix
  }

  geo_location {
    failover_priority = each.value.geo_location.failover_priority
    location          = each.value.geo_location.location
    zone_redundant    = each.value.geo_location.zone_redundant
  }

  dynamic "analytical_storage" {
    for_each = each.value.analytical_storage != null ? [each.value.analytical_storage] : []
    content {
      schema_type = analytical_storage.value.schema_type
    }
  }

  dynamic "backup" {
    for_each = each.value.backup != null ? [each.value.backup] : []
    content {
      interval_in_minutes = backup.value.interval_in_minutes
      retention_in_hours  = backup.value.retention_in_hours
      storage_redundancy  = backup.value.storage_redundancy
      tier                = backup.value.tier
      type                = backup.value.type
    }
  }

  dynamic "capabilities" {
    for_each = each.value.capabilities != null ? [each.value.capabilities] : []
    content {
      name = capabilities.value.name
    }
  }

  dynamic "capacity" {
    for_each = each.value.capacity != null ? [each.value.capacity] : []
    content {
      total_throughput_limit = capacity.value.total_throughput_limit
    }
  }

  dynamic "cors_rule" {
    for_each = each.value.cors_rule != null ? [each.value.cors_rule] : []
    content {
      allowed_headers    = cors_rule.value.allowed_headers
      allowed_methods    = cors_rule.value.allowed_methods
      allowed_origins    = cors_rule.value.allowed_origins
      exposed_headers    = cors_rule.value.exposed_headers
      max_age_in_seconds = cors_rule.value.max_age_in_seconds
    }
  }

  dynamic "identity" {
    for_each = each.value.identity != null ? [each.value.identity] : []
    content {
      identity_ids = identity.value.identity_ids
      type         = identity.value.type
    }
  }

  dynamic "restore" {
    for_each = each.value.restore != null ? [each.value.restore] : []
    content {
      dynamic "database" {
        for_each = restore.value.database != null ? [restore.value.database] : []
        content {
          collection_names = database.value.collection_names
          name             = database.value.name
        }
      }
      dynamic "gremlin_database" {
        for_each = restore.value.gremlin_database != null ? [restore.value.gremlin_database] : []
        content {
          graph_names = gremlin_database.value.graph_names
          name        = gremlin_database.value.name
        }
      }
      restore_timestamp_in_utc   = restore.value.restore_timestamp_in_utc
      source_cosmosdb_account_id = restore.value.source_cosmosdb_account_id
      tables_to_restore          = restore.value.tables_to_restore
    }
  }

  dynamic "virtual_network_rule" {
    for_each = each.value.virtual_network_rule != null ? [each.value.virtual_network_rule] : []
    content {
      id                                   = virtual_network_rule.value.id
      ignore_missing_vnet_service_endpoint = virtual_network_rule.value.ignore_missing_vnet_service_endpoint
    }
  }
}

