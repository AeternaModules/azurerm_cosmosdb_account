output "cosmosdb_accounts" {
  description = "All cosmosdb_account resources"
  value       = azurerm_cosmosdb_account.cosmosdb_accounts
  sensitive   = true
}
output "cosmosdb_accounts_access_key_metadata_writes_enabled" {
  description = "List of access_key_metadata_writes_enabled values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.access_key_metadata_writes_enabled]
}
output "cosmosdb_accounts_analytical_storage" {
  description = "List of analytical_storage values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.analytical_storage]
}
output "cosmosdb_accounts_analytical_storage_enabled" {
  description = "List of analytical_storage_enabled values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.analytical_storage_enabled]
}
output "cosmosdb_accounts_automatic_failover_enabled" {
  description = "List of automatic_failover_enabled values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.automatic_failover_enabled]
}
output "cosmosdb_accounts_backup" {
  description = "List of backup values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.backup]
}
output "cosmosdb_accounts_burst_capacity_enabled" {
  description = "List of burst_capacity_enabled values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.burst_capacity_enabled]
}
output "cosmosdb_accounts_capabilities" {
  description = "List of capabilities values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.capabilities]
}
output "cosmosdb_accounts_capacity" {
  description = "List of capacity values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.capacity]
}
output "cosmosdb_accounts_consistency_policy" {
  description = "List of consistency_policy values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.consistency_policy]
}
output "cosmosdb_accounts_cors_rule" {
  description = "List of cors_rule values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.cors_rule]
}
output "cosmosdb_accounts_create_mode" {
  description = "List of create_mode values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.create_mode]
}
output "cosmosdb_accounts_default_identity_type" {
  description = "List of default_identity_type values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.default_identity_type]
}
output "cosmosdb_accounts_endpoint" {
  description = "List of endpoint values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.endpoint]
}
output "cosmosdb_accounts_free_tier_enabled" {
  description = "List of free_tier_enabled values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.free_tier_enabled]
}
output "cosmosdb_accounts_geo_location" {
  description = "List of geo_location values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.geo_location]
}
output "cosmosdb_accounts_identity" {
  description = "List of identity values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.identity]
}
output "cosmosdb_accounts_ip_range_filter" {
  description = "List of ip_range_filter values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.ip_range_filter]
}
output "cosmosdb_accounts_is_virtual_network_filter_enabled" {
  description = "List of is_virtual_network_filter_enabled values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.is_virtual_network_filter_enabled]
}
output "cosmosdb_accounts_key_vault_key_id" {
  description = "List of key_vault_key_id values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.key_vault_key_id]
}
output "cosmosdb_accounts_kind" {
  description = "List of kind values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.kind]
}
output "cosmosdb_accounts_local_authentication_disabled" {
  description = "List of local_authentication_disabled values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.local_authentication_disabled]
}
output "cosmosdb_accounts_local_authentication_enabled" {
  description = "List of local_authentication_enabled values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.local_authentication_enabled]
}
output "cosmosdb_accounts_location" {
  description = "List of location values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.location]
}
output "cosmosdb_accounts_managed_hsm_key_id" {
  description = "List of managed_hsm_key_id values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.managed_hsm_key_id]
}
output "cosmosdb_accounts_minimal_tls_version" {
  description = "List of minimal_tls_version values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.minimal_tls_version]
}
output "cosmosdb_accounts_mongo_server_version" {
  description = "List of mongo_server_version values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.mongo_server_version]
}
output "cosmosdb_accounts_multiple_write_locations_enabled" {
  description = "List of multiple_write_locations_enabled values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.multiple_write_locations_enabled]
}
output "cosmosdb_accounts_name" {
  description = "List of name values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.name]
}
output "cosmosdb_accounts_network_acl_bypass_for_azure_services" {
  description = "List of network_acl_bypass_for_azure_services values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.network_acl_bypass_for_azure_services]
}
output "cosmosdb_accounts_network_acl_bypass_ids" {
  description = "List of network_acl_bypass_ids values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.network_acl_bypass_ids]
}
output "cosmosdb_accounts_offer_type" {
  description = "List of offer_type values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.offer_type]
}
output "cosmosdb_accounts_partition_merge_enabled" {
  description = "List of partition_merge_enabled values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.partition_merge_enabled]
}
output "cosmosdb_accounts_primary_key" {
  description = "List of primary_key values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.primary_key]
  sensitive   = true
}
output "cosmosdb_accounts_primary_mongodb_connection_string" {
  description = "List of primary_mongodb_connection_string values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.primary_mongodb_connection_string]
  sensitive   = true
}
output "cosmosdb_accounts_primary_readonly_key" {
  description = "List of primary_readonly_key values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.primary_readonly_key]
  sensitive   = true
}
output "cosmosdb_accounts_primary_readonly_mongodb_connection_string" {
  description = "List of primary_readonly_mongodb_connection_string values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.primary_readonly_mongodb_connection_string]
  sensitive   = true
}
output "cosmosdb_accounts_primary_readonly_sql_connection_string" {
  description = "List of primary_readonly_sql_connection_string values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.primary_readonly_sql_connection_string]
  sensitive   = true
}
output "cosmosdb_accounts_primary_sql_connection_string" {
  description = "List of primary_sql_connection_string values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.primary_sql_connection_string]
  sensitive   = true
}
output "cosmosdb_accounts_public_network_access_enabled" {
  description = "List of public_network_access_enabled values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.public_network_access_enabled]
}
output "cosmosdb_accounts_read_endpoints" {
  description = "List of read_endpoints values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.read_endpoints]
}
output "cosmosdb_accounts_resource_group_name" {
  description = "List of resource_group_name values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.resource_group_name]
}
output "cosmosdb_accounts_restore" {
  description = "List of restore values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.restore]
}
output "cosmosdb_accounts_secondary_key" {
  description = "List of secondary_key values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.secondary_key]
  sensitive   = true
}
output "cosmosdb_accounts_secondary_mongodb_connection_string" {
  description = "List of secondary_mongodb_connection_string values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.secondary_mongodb_connection_string]
  sensitive   = true
}
output "cosmosdb_accounts_secondary_readonly_key" {
  description = "List of secondary_readonly_key values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.secondary_readonly_key]
  sensitive   = true
}
output "cosmosdb_accounts_secondary_readonly_mongodb_connection_string" {
  description = "List of secondary_readonly_mongodb_connection_string values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.secondary_readonly_mongodb_connection_string]
  sensitive   = true
}
output "cosmosdb_accounts_secondary_readonly_sql_connection_string" {
  description = "List of secondary_readonly_sql_connection_string values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.secondary_readonly_sql_connection_string]
  sensitive   = true
}
output "cosmosdb_accounts_secondary_sql_connection_string" {
  description = "List of secondary_sql_connection_string values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.secondary_sql_connection_string]
  sensitive   = true
}
output "cosmosdb_accounts_tags" {
  description = "List of tags values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.tags]
}
output "cosmosdb_accounts_virtual_network_rule" {
  description = "List of virtual_network_rule values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.virtual_network_rule]
}
output "cosmosdb_accounts_write_endpoints" {
  description = "List of write_endpoints values across all cosmosdb_accounts"
  value       = [for k, v in azurerm_cosmosdb_account.cosmosdb_accounts : v.write_endpoints]
}

