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
    - local_authentication_enabled
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
    partition_merge_enabled               = optional(bool)
    network_acl_bypass_ids                = optional(list(string))
    network_acl_bypass_for_azure_services = optional(bool)
    multiple_write_locations_enabled      = optional(bool)
    mongo_server_version                  = optional(string)
    minimal_tls_version                   = optional(string)
    managed_hsm_key_id                    = optional(string)
    local_authentication_enabled          = optional(bool)
    local_authentication_disabled         = optional(bool)
    kind                                  = optional(string)
    is_virtual_network_filter_enabled     = optional(bool)
    public_network_access_enabled         = optional(bool)
    ip_range_filter                       = optional(set(string))
    free_tier_enabled                     = optional(bool)
    default_identity_type                 = optional(string)
    create_mode                           = optional(string)
    burst_capacity_enabled                = optional(bool)
    automatic_failover_enabled            = optional(bool)
    analytical_storage_enabled            = optional(bool)
    access_key_metadata_writes_enabled    = optional(bool)
    key_vault_key_id                      = optional(string)
    tags                                  = optional(map(string))
    consistency_policy = object({
      consistency_level       = string
      max_interval_in_seconds = optional(number)
      max_staleness_prefix    = optional(number)
    })
    geo_location = list(object({
      failover_priority = number
      location          = string
      zone_redundant    = optional(bool)
    }))
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
    capabilities = optional(list(object({
      name = string
    })))
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
      database = optional(list(object({
        collection_names = optional(set(string))
        name             = string
      })))
      gremlin_database = optional(list(object({
        graph_names = optional(list(string))
        name        = string
      })))
      restore_timestamp_in_utc   = string
      source_cosmosdb_account_id = string
      tables_to_restore          = optional(list(string))
    }))
    virtual_network_rule = optional(list(object({
      id                                   = string
      ignore_missing_vnet_service_endpoint = optional(bool)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_accounts : (
        length(v.geo_location) >= 1
      )
    ])
    error_message = "Each geo_location list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_accounts : (
        can(regex("^[-a-z0-9]{3,50}$", v.name))
      )
    ])
    error_message = "Cosmos DB Account name must be 3 - 50 characters long, contain only lowercase letters, numbers and hyphens."
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_accounts : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_accounts : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_accounts : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_accounts : (
        v.capacity == null || (v.capacity.total_throughput_limit >= -1)
      )
    ])
    error_message = "must be at least -1"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_accounts : (
        v.default_identity_type == null || ((can(regex("^UserAssignedIdentity(.)+$", v.default_identity_type))) || (contains(["FirstPartyIdentity", "SystemAssignedIdentity"], v.default_identity_type)))
      )
    ])
    error_message = "any of: user assigned identity must be in the format of: 'UserAssignedIdentity=/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{userAssignedIdentityName}'; must be one of: FirstPartyIdentity, SystemAssignedIdentity"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_accounts : (
        v.consistency_policy.max_interval_in_seconds == null || (v.consistency_policy.max_interval_in_seconds >= 5 && v.consistency_policy.max_interval_in_seconds <= 86400)
      )
    ])
    error_message = "must be between 5 and 86400"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_accounts : (
        alltrue([for item in v.geo_location : (item.failover_priority >= 0)])
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_accounts : (
        v.backup == null || (v.backup.interval_in_minutes == null || (v.backup.interval_in_minutes >= 60 && v.backup.interval_in_minutes <= 1440))
      )
    ])
    error_message = "must be between 60 and 1440"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_accounts : (
        v.backup == null || (v.backup.retention_in_hours == null || (v.backup.retention_in_hours >= 8 && v.backup.retention_in_hours <= 720))
      )
    ])
    error_message = "must be between 8 and 720"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_accounts : (
        v.cors_rule == null || (alltrue([for x in v.cors_rule.allowed_origins : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_accounts : (
        v.cors_rule == null || (alltrue([for x in v.cors_rule.exposed_headers : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_accounts : (
        v.cors_rule == null || (alltrue([for x in v.cors_rule.allowed_headers : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_accounts : (
        v.restore == null || (v.restore.database == null || alltrue([for item in v.restore.database : (length(item.name) > 0)]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_accounts : (
        v.restore == null || (v.restore.database == null || alltrue([for item in v.restore.database : (item.collection_names == null || (alltrue([for x in item.collection_names : length(x) > 0])))]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_accounts : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 36 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

