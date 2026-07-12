output "cosmosdb_accounts_id" {
  description = "Map of id values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.id }
}
output "cosmosdb_accounts_access_key_metadata_writes_enabled" {
  description = "Map of access_key_metadata_writes_enabled values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.access_key_metadata_writes_enabled }
}
output "cosmosdb_accounts_analytical_storage" {
  description = "Map of analytical_storage values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.analytical_storage }
}
output "cosmosdb_accounts_analytical_storage_enabled" {
  description = "Map of analytical_storage_enabled values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.analytical_storage_enabled }
}
output "cosmosdb_accounts_automatic_failover_enabled" {
  description = "Map of automatic_failover_enabled values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.automatic_failover_enabled }
}
output "cosmosdb_accounts_backup" {
  description = "Map of backup values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.backup }
}
output "cosmosdb_accounts_burst_capacity_enabled" {
  description = "Map of burst_capacity_enabled values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.burst_capacity_enabled }
}
output "cosmosdb_accounts_capabilities" {
  description = "Map of capabilities values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.capabilities }
}
output "cosmosdb_accounts_capacity" {
  description = "Map of capacity values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.capacity }
}
output "cosmosdb_accounts_consistency_policy" {
  description = "Map of consistency_policy values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.consistency_policy }
}
output "cosmosdb_accounts_cors_rule" {
  description = "Map of cors_rule values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.cors_rule }
}
output "cosmosdb_accounts_create_mode" {
  description = "Map of create_mode values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.create_mode }
}
output "cosmosdb_accounts_default_identity_type" {
  description = "Map of default_identity_type values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.default_identity_type }
}
output "cosmosdb_accounts_endpoint" {
  description = "Map of endpoint values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.endpoint }
}
output "cosmosdb_accounts_free_tier_enabled" {
  description = "Map of free_tier_enabled values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.free_tier_enabled }
}
output "cosmosdb_accounts_geo_location" {
  description = "Map of geo_location values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.geo_location }
}
output "cosmosdb_accounts_identity" {
  description = "Map of identity values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.identity }
}
output "cosmosdb_accounts_ip_range_filter" {
  description = "Map of ip_range_filter values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.ip_range_filter }
}
output "cosmosdb_accounts_is_virtual_network_filter_enabled" {
  description = "Map of is_virtual_network_filter_enabled values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.is_virtual_network_filter_enabled }
}
output "cosmosdb_accounts_key_vault_key_id" {
  description = "Map of key_vault_key_id values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.key_vault_key_id }
}
output "cosmosdb_accounts_kind" {
  description = "Map of kind values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.kind }
}
output "cosmosdb_accounts_local_authentication_disabled" {
  description = "Map of local_authentication_disabled values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.local_authentication_disabled }
}
output "cosmosdb_accounts_local_authentication_enabled" {
  description = "Map of local_authentication_enabled values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.local_authentication_enabled }
}
output "cosmosdb_accounts_location" {
  description = "Map of location values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.location }
}
output "cosmosdb_accounts_managed_hsm_key_id" {
  description = "Map of managed_hsm_key_id values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.managed_hsm_key_id }
}
output "cosmosdb_accounts_minimal_tls_version" {
  description = "Map of minimal_tls_version values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.minimal_tls_version }
}
output "cosmosdb_accounts_mongo_server_version" {
  description = "Map of mongo_server_version values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.mongo_server_version }
}
output "cosmosdb_accounts_multiple_write_locations_enabled" {
  description = "Map of multiple_write_locations_enabled values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.multiple_write_locations_enabled }
}
output "cosmosdb_accounts_name" {
  description = "Map of name values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.name }
}
output "cosmosdb_accounts_network_acl_bypass_for_azure_services" {
  description = "Map of network_acl_bypass_for_azure_services values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.network_acl_bypass_for_azure_services }
}
output "cosmosdb_accounts_network_acl_bypass_ids" {
  description = "Map of network_acl_bypass_ids values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.network_acl_bypass_ids }
}
output "cosmosdb_accounts_offer_type" {
  description = "Map of offer_type values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.offer_type }
}
output "cosmosdb_accounts_partition_merge_enabled" {
  description = "Map of partition_merge_enabled values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.partition_merge_enabled }
}
output "cosmosdb_accounts_primary_key" {
  description = "Map of primary_key values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.primary_key }
  sensitive   = true
}
output "cosmosdb_accounts_primary_mongodb_connection_string" {
  description = "Map of primary_mongodb_connection_string values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.primary_mongodb_connection_string }
  sensitive   = true
}
output "cosmosdb_accounts_primary_readonly_key" {
  description = "Map of primary_readonly_key values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.primary_readonly_key }
  sensitive   = true
}
output "cosmosdb_accounts_primary_readonly_mongodb_connection_string" {
  description = "Map of primary_readonly_mongodb_connection_string values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.primary_readonly_mongodb_connection_string }
  sensitive   = true
}
output "cosmosdb_accounts_primary_readonly_sql_connection_string" {
  description = "Map of primary_readonly_sql_connection_string values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.primary_readonly_sql_connection_string }
  sensitive   = true
}
output "cosmosdb_accounts_primary_sql_connection_string" {
  description = "Map of primary_sql_connection_string values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.primary_sql_connection_string }
  sensitive   = true
}
output "cosmosdb_accounts_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.public_network_access_enabled }
}
output "cosmosdb_accounts_read_endpoints" {
  description = "Map of read_endpoints values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.read_endpoints }
}
output "cosmosdb_accounts_resource_group_name" {
  description = "Map of resource_group_name values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.resource_group_name }
}
output "cosmosdb_accounts_restore" {
  description = "Map of restore values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.restore }
}
output "cosmosdb_accounts_secondary_key" {
  description = "Map of secondary_key values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.secondary_key }
  sensitive   = true
}
output "cosmosdb_accounts_secondary_mongodb_connection_string" {
  description = "Map of secondary_mongodb_connection_string values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.secondary_mongodb_connection_string }
  sensitive   = true
}
output "cosmosdb_accounts_secondary_readonly_key" {
  description = "Map of secondary_readonly_key values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.secondary_readonly_key }
  sensitive   = true
}
output "cosmosdb_accounts_secondary_readonly_mongodb_connection_string" {
  description = "Map of secondary_readonly_mongodb_connection_string values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.secondary_readonly_mongodb_connection_string }
  sensitive   = true
}
output "cosmosdb_accounts_secondary_readonly_sql_connection_string" {
  description = "Map of secondary_readonly_sql_connection_string values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.secondary_readonly_sql_connection_string }
  sensitive   = true
}
output "cosmosdb_accounts_secondary_sql_connection_string" {
  description = "Map of secondary_sql_connection_string values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.secondary_sql_connection_string }
  sensitive   = true
}
output "cosmosdb_accounts_tags" {
  description = "Map of tags values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.tags }
}
output "cosmosdb_accounts_virtual_network_rule" {
  description = "Map of virtual_network_rule values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.virtual_network_rule }
}
output "cosmosdb_accounts_write_endpoints" {
  description = "Map of write_endpoints values across all cosmosdb_accounts, keyed the same as var.cosmosdb_accounts"
  value       = { for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : k => v.write_endpoints }
}

