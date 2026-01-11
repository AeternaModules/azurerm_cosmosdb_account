variable "cosmosdb_accounts" {
  description = <<EOT
Map of cosmosdb_accounts, attributes below
Required:
    - location
    - name
    - offer_type
    - resource_group_name
    - consistency_policy (block):
        - consistency_level (required)
        - max_interval_in_seconds (optional)
        - max_staleness_prefix (optional)
    - geo_location (block):
        - failover_priority (required)
        - location (required)
        - zone_redundant (optional)
Optional:
    - access_key_metadata_writes_enabled
    - analytical_storage_enabled
    - automatic_failover_enabled
    - burst_capacity_enabled
    - create_mode
    - default_identity_type
    - free_tier_enabled
    - ip_range_filter
    - is_virtual_network_filter_enabled
    - key_vault_key_id
    - kind
    - local_authentication_disabled
    - managed_hsm_key_id
    - minimal_tls_version
    - mongo_server_version
    - multiple_write_locations_enabled
    - network_acl_bypass_for_azure_services
    - network_acl_bypass_ids
    - partition_merge_enabled
    - public_network_access_enabled
    - tags
    - analytical_storage (block):
        - schema_type (required)
    - backup (block):
        - interval_in_minutes (optional)
        - retention_in_hours (optional)
        - storage_redundancy (optional)
        - tier (optional)
        - type (required)
    - capabilities (block):
        - name (required)
    - capacity (block):
        - total_throughput_limit (required)
    - cors_rule (block):
        - allowed_headers (required)
        - allowed_methods (required)
        - allowed_origins (required)
        - exposed_headers (required)
        - max_age_in_seconds (optional)
    - identity (block):
        - identity_ids (optional)
        - type (required)
    - restore (block):
        - database (optional, block):
            - collection_names (optional)
            - name (required)
        - gremlin_database (optional, block):
            - graph_names (optional)
            - name (required)
        - restore_timestamp_in_utc (required)
        - source_cosmosdb_account_id (required)
        - tables_to_restore (optional)
    - virtual_network_rule (block):
        - id (required)
        - ignore_missing_vnet_service_endpoint (optional)
EOT

  type = map(object({
    location                              = string
    name                                  = string
    offer_type                            = string
    resource_group_name                   = string
    partition_merge_enabled               = optional(bool, false)
    network_acl_bypass_ids                = optional(list(string))
    network_acl_bypass_for_azure_services = optional(bool, false)
    multiple_write_locations_enabled      = optional(bool, false)
    mongo_server_version                  = optional(string)
    minimal_tls_version                   = optional(string, "Tls12")
    managed_hsm_key_id                    = optional(string)
    local_authentication_disabled         = optional(bool, false)
    kind                                  = optional(string, "GlobalDocumentDB")
    is_virtual_network_filter_enabled     = optional(bool, false)
    public_network_access_enabled         = optional(bool, true)
    ip_range_filter                       = optional(set(string))
    free_tier_enabled                     = optional(bool, false)
    default_identity_type                 = optional(string, "FirstPartyIdentity")
    create_mode                           = optional(string)
    burst_capacity_enabled                = optional(bool, false)
    automatic_failover_enabled            = optional(bool, false)
    analytical_storage_enabled            = optional(bool, false)
    access_key_metadata_writes_enabled    = optional(bool, true)
    key_vault_key_id                      = optional(string)
    tags                                  = optional(map(string))
    consistency_policy = object({
      consistency_level       = string
      max_interval_in_seconds = optional(number, 5)
      max_staleness_prefix    = optional(number, 100)
    })
    geo_location = object({
      failover_priority = number
      location          = string
      zone_redundant    = optional(bool, false)
    })
    analytical_storage = optional(object({
      schema_type = string
    }))
    backup = optional(object({
      interval_in_minutes = optional(number)
      retention_in_hours  = optional(number)
      storage_redundancy  = optional(string)
      tier                = optional(string)
      type                = string
    }))
    capabilities = optional(object({
      name = string
    }))
    capacity = optional(object({
      total_throughput_limit = number
    }))
    cors_rule = optional(object({
      allowed_headers    = list(string)
      allowed_methods    = list(string)
      allowed_origins    = list(string)
      exposed_headers    = list(string)
      max_age_in_seconds = optional(number)
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    restore = optional(object({
      database = optional(object({
        collection_names = optional(set(string))
        name             = string
      }))
      gremlin_database = optional(object({
        graph_names = optional(list(string))
        name        = string
      }))
      restore_timestamp_in_utc   = string
      source_cosmosdb_account_id = string
      tables_to_restore          = optional(list(string))
    }))
    virtual_network_rule = optional(object({
      id                                   = string
      ignore_missing_vnet_service_endpoint = optional(bool, false)
    }))
  }))
}

