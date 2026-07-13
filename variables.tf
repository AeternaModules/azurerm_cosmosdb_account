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
  # --- Unconfirmed validation candidates, derived from azurerm_cosmosdb_account's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: can(regex("^[-a-z0-9]{3,50}$", value))
  #   message:   Cosmos DB Account name must be 3 - 50 characters long, contain only lowercase letters, numbers and hyphens.
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: offer_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: analytical_storage.schema_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: capacity.total_throughput_limit
  #   condition: value >= -1
  #   message:   must be at least -1
  # path: minimal_tls_version
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: create_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: default_identity_type
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: kind
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: ip_range_filter[*]
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
  # path: consistency_policy.consistency_level
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: consistency_policy.max_interval_in_seconds
  #   condition: value >= 5 && value <= 86400
  #   message:   must be between 5 and 86400
  # path: consistency_policy.max_staleness_prefix
  #   source:    validation.IntBetween(10, math.MaxInt32) - bound(s) not a literal int (e.g. a named constant like math.MaxInt32) - resolve manually
  # path: geo_location.location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: geo_location.failover_priority
  #   condition: value >= 0
  #   message:   must be at least 0
  # path: capabilities.name
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: virtual_network_rule.id
  #   source:    [from azure.ValidateResourceID] !ok
  # path: virtual_network_rule.id
  #   source:    [from azure.ValidateResourceID] err != nil
  # path: mongo_server_version
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: network_acl_bypass_ids[*]
  #   source:    [from azure.ValidateResourceID] !ok
  # path: network_acl_bypass_ids[*]
  #   source:    [from azure.ValidateResourceID] err != nil
  # path: backup.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: backup.tier
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: backup.interval_in_minutes
  #   condition: value >= 60 && value <= 1440
  #   message:   must be between 60 and 1440
  # path: backup.retention_in_hours
  #   condition: value >= 8 && value <= 720
  #   message:   must be between 8 and 720
  # path: backup.storage_redundancy
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: cors_rule.allowed_origins[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: cors_rule.exposed_headers[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: cors_rule.allowed_headers[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: cors_rule.allowed_methods[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: cors_rule.max_age_in_seconds
  #   source:    validation.IntBetween(1, math.MaxInt32) - bound(s) not a literal int (e.g. a named constant like math.MaxInt32) - resolve manually
  # path: restore.source_cosmosdb_account_id
  #   source:    [from restorables.ValidateRestorableDatabaseAccountID] !ok
  # path: restore.source_cosmosdb_account_id
  #   source:    [from restorables.ValidateRestorableDatabaseAccountID] err != nil
  # path: restore.restore_timestamp_in_utc
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
  # path: restore.database.name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: restore.database.collection_names[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: restore.gremlin_database.name
  #   source:    [from validate.CosmosEntityName] len(value) < 1 || len(value) > 255
  # path: restore.gremlin_database.graph_names[*]
  #   source:    [from validate.CosmosEntityName] len(value) < 1 || len(value) > 255
  # path: restore.tables_to_restore[*]
  #   source:    [from validate.CosmosEntityName] len(value) < 1 || len(value) > 255
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

