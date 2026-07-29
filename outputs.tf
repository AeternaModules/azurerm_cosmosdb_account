output "cosmosdb_accounts_id" {
  description = "Map of id values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cosmosdb_accounts_access_key_metadata_writes_enabled" {
  description = "Map of access_key_metadata_writes_enabled values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.access_key_metadata_writes_enabled if v.access_key_metadata_writes_enabled != null }
}
output "cosmosdb_accounts_analytical_storage" {
  description = "Map of analytical_storage values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.analytical_storage if v.analytical_storage != null && length(v.analytical_storage) > 0 }
}
output "cosmosdb_accounts_analytical_storage_enabled" {
  description = "Map of analytical_storage_enabled values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.analytical_storage_enabled if v.analytical_storage_enabled != null }
}
output "cosmosdb_accounts_automatic_failover_enabled" {
  description = "Map of automatic_failover_enabled values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.automatic_failover_enabled if v.automatic_failover_enabled != null }
}
output "cosmosdb_accounts_backup" {
  description = "Map of backup values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.backup if v.backup != null && length(v.backup) > 0 }
}
output "cosmosdb_accounts_burst_capacity_enabled" {
  description = "Map of burst_capacity_enabled values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.burst_capacity_enabled if v.burst_capacity_enabled != null }
}
output "cosmosdb_accounts_capabilities" {
  description = "Map of capabilities values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.capabilities if v.capabilities != null && length(v.capabilities) > 0 }
}
output "cosmosdb_accounts_capacity" {
  description = "Map of capacity values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.capacity if v.capacity != null && length(v.capacity) > 0 }
}
output "cosmosdb_accounts_consistency_policy" {
  description = "Map of consistency_policy values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.consistency_policy if v.consistency_policy != null && length(v.consistency_policy) > 0 }
}
output "cosmosdb_accounts_cors_rule" {
  description = "Map of cors_rule values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.cors_rule if v.cors_rule != null && length(v.cors_rule) > 0 }
}
output "cosmosdb_accounts_create_mode" {
  description = "Map of create_mode values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.create_mode if v.create_mode != null && length(v.create_mode) > 0 }
}
output "cosmosdb_accounts_default_identity_type" {
  description = "Map of default_identity_type values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.default_identity_type if v.default_identity_type != null && length(v.default_identity_type) > 0 }
}
output "cosmosdb_accounts_endpoint" {
  description = "Map of endpoint values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "cosmosdb_accounts_free_tier_enabled" {
  description = "Map of free_tier_enabled values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.free_tier_enabled if v.free_tier_enabled != null }
}
output "cosmosdb_accounts_geo_location" {
  description = "Map of geo_location values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.geo_location if v.geo_location != null && length(v.geo_location) > 0 }
}
output "cosmosdb_accounts_identity" {
  description = "Map of identity values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "cosmosdb_accounts_ip_range_filter" {
  description = "Map of ip_range_filter values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.ip_range_filter if v.ip_range_filter != null && length(v.ip_range_filter) > 0 }
}
output "cosmosdb_accounts_is_virtual_network_filter_enabled" {
  description = "Map of is_virtual_network_filter_enabled values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.is_virtual_network_filter_enabled if v.is_virtual_network_filter_enabled != null }
}
output "cosmosdb_accounts_key_vault_key_id" {
  description = "Map of key_vault_key_id values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.key_vault_key_id if v.key_vault_key_id != null && length(v.key_vault_key_id) > 0 }
}
output "cosmosdb_accounts_kind" {
  description = "Map of kind values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.kind if v.kind != null && length(v.kind) > 0 }
}
output "cosmosdb_accounts_local_authentication_enabled" {
  description = "Map of local_authentication_enabled values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.local_authentication_enabled if v.local_authentication_enabled != null }
}
output "cosmosdb_accounts_location" {
  description = "Map of location values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.location if v.location != null && length(v.location) > 0 }
}
output "cosmosdb_accounts_minimal_tls_version" {
  description = "Map of minimal_tls_version values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.minimal_tls_version if v.minimal_tls_version != null && length(v.minimal_tls_version) > 0 }
}
output "cosmosdb_accounts_mongo_server_version" {
  description = "Map of mongo_server_version values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.mongo_server_version if v.mongo_server_version != null && length(v.mongo_server_version) > 0 }
}
output "cosmosdb_accounts_multiple_write_locations_enabled" {
  description = "Map of multiple_write_locations_enabled values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.multiple_write_locations_enabled if v.multiple_write_locations_enabled != null }
}
output "cosmosdb_accounts_name" {
  description = "Map of name values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cosmosdb_accounts_network_acl_bypass_for_azure_services" {
  description = "Map of network_acl_bypass_for_azure_services values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.network_acl_bypass_for_azure_services if v.network_acl_bypass_for_azure_services != null }
}
output "cosmosdb_accounts_network_acl_bypass_ids" {
  description = "Map of network_acl_bypass_ids values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.network_acl_bypass_ids if v.network_acl_bypass_ids != null && length(v.network_acl_bypass_ids) > 0 }
}
output "cosmosdb_accounts_offer_type" {
  description = "Map of offer_type values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.offer_type if v.offer_type != null && length(v.offer_type) > 0 }
}
output "cosmosdb_accounts_partition_merge_enabled" {
  description = "Map of partition_merge_enabled values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.partition_merge_enabled if v.partition_merge_enabled != null }
}
output "cosmosdb_accounts_primary_key" {
  description = "Map of primary_key values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.primary_key if v.primary_key != null && length(v.primary_key) > 0 }
  sensitive   = true
}
output "cosmosdb_accounts_primary_mongodb_connection_string" {
  description = "Map of primary_mongodb_connection_string values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.primary_mongodb_connection_string if v.primary_mongodb_connection_string != null && length(v.primary_mongodb_connection_string) > 0 }
  sensitive   = true
}
output "cosmosdb_accounts_primary_readonly_key" {
  description = "Map of primary_readonly_key values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.primary_readonly_key if v.primary_readonly_key != null && length(v.primary_readonly_key) > 0 }
  sensitive   = true
}
output "cosmosdb_accounts_primary_readonly_mongodb_connection_string" {
  description = "Map of primary_readonly_mongodb_connection_string values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.primary_readonly_mongodb_connection_string if v.primary_readonly_mongodb_connection_string != null && length(v.primary_readonly_mongodb_connection_string) > 0 }
  sensitive   = true
}
output "cosmosdb_accounts_primary_readonly_sql_connection_string" {
  description = "Map of primary_readonly_sql_connection_string values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.primary_readonly_sql_connection_string if v.primary_readonly_sql_connection_string != null && length(v.primary_readonly_sql_connection_string) > 0 }
  sensitive   = true
}
output "cosmosdb_accounts_primary_sql_connection_string" {
  description = "Map of primary_sql_connection_string values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.primary_sql_connection_string if v.primary_sql_connection_string != null && length(v.primary_sql_connection_string) > 0 }
  sensitive   = true
}
output "cosmosdb_accounts_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.public_network_access_enabled if v.public_network_access_enabled != null }
}
output "cosmosdb_accounts_read_endpoints" {
  description = "Map of read_endpoints values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.read_endpoints if v.read_endpoints != null && length(v.read_endpoints) > 0 }
}
output "cosmosdb_accounts_resource_group_name" {
  description = "Map of resource_group_name values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "cosmosdb_accounts_restore" {
  description = "Map of restore values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.restore if v.restore != null && length(v.restore) > 0 }
}
output "cosmosdb_accounts_secondary_key" {
  description = "Map of secondary_key values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.secondary_key if v.secondary_key != null && length(v.secondary_key) > 0 }
  sensitive   = true
}
output "cosmosdb_accounts_secondary_mongodb_connection_string" {
  description = "Map of secondary_mongodb_connection_string values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.secondary_mongodb_connection_string if v.secondary_mongodb_connection_string != null && length(v.secondary_mongodb_connection_string) > 0 }
  sensitive   = true
}
output "cosmosdb_accounts_secondary_readonly_key" {
  description = "Map of secondary_readonly_key values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.secondary_readonly_key if v.secondary_readonly_key != null && length(v.secondary_readonly_key) > 0 }
  sensitive   = true
}
output "cosmosdb_accounts_secondary_readonly_mongodb_connection_string" {
  description = "Map of secondary_readonly_mongodb_connection_string values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.secondary_readonly_mongodb_connection_string if v.secondary_readonly_mongodb_connection_string != null && length(v.secondary_readonly_mongodb_connection_string) > 0 }
  sensitive   = true
}
output "cosmosdb_accounts_secondary_readonly_sql_connection_string" {
  description = "Map of secondary_readonly_sql_connection_string values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.secondary_readonly_sql_connection_string if v.secondary_readonly_sql_connection_string != null && length(v.secondary_readonly_sql_connection_string) > 0 }
  sensitive   = true
}
output "cosmosdb_accounts_secondary_sql_connection_string" {
  description = "Map of secondary_sql_connection_string values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.secondary_sql_connection_string if v.secondary_sql_connection_string != null && length(v.secondary_sql_connection_string) > 0 }
  sensitive   = true
}
output "cosmosdb_accounts_tags" {
  description = "Map of tags values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "cosmosdb_accounts_virtual_network_rule" {
  description = "Map of virtual_network_rule values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.virtual_network_rule if v.virtual_network_rule != null && length(v.virtual_network_rule) > 0 }
}
output "cosmosdb_accounts_write_endpoints" {
  description = "Map of write_endpoints values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.write_endpoints if v.write_endpoints != null && length(v.write_endpoints) > 0 }
}

