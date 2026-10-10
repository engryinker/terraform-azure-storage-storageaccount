variable "resource_group_name" {
  description = "Name of the existing resource group to deploy every resource in this module call into. This module does not create the resource group itself."
  type        = string
}

variable "location" {
  description = "Azure region for every resource created by this module call."
  type        = string
}

variable "tags" {
  description = "Default tags applied to every resource created by this module call (e.g. the output of terraform-azure-tags). Overridden per-resource by that resource's own `tags` attribute, if set."
  type        = map(string)
  default     = {}
}

variable "enable_telemetry" {
  description = "Default AVM telemetry opt-in/out applied to every resource created by this module call. See https://aka.ms/avm/telemetry. Overridden per-resource by that resource's own `enable_telemetry` attribute, if set."
  type        = bool
  default     = true
}

variable "storage_accounts" {
  description = "Map of storage accounts to create, keyed by an arbitrary caller-chosen map key. Mirrors the inputs of Azure/avm-res-storage-storageaccount/azurerm v0.10.0 (https://registry.terraform.io/modules/Azure/avm-res-storage-storageaccount/azurerm/0.10.0) 1:1 -- see upstream docs for the schema of any field typed `any`. `name`, `tags` and `enable_telemetry` (where present upstream) are handled specially by this wrapper; every other field is passed straight through unmodified."
  type = map(object({
    name                                      = string
    tags                                      = optional(map(string))
    enable_telemetry                          = optional(bool)
    queue_encryption_key_type                 = optional(string, null)
    account_sku_name                          = optional(string, null)
    sftp_enabled                              = optional(bool, null)
    table_properties                          = optional(any, null)
    diagnostic_settings_table                 = optional(any, null)
    queues                                    = optional(any, null)
    static_website                            = optional(any, null)
    customer_managed_key                      = optional(any, null)
    timeouts                                  = optional(any, null)
    queue_properties                          = optional(any, null)
    account_kind                              = optional(string, null)
    custom_domain                             = optional(any, null)
    edge_zone                                 = optional(string, null)
    infrastructure_encryption_enabled         = optional(bool, null)
    managed_identities                        = optional(any, null)
    blob_properties                           = optional(any, null)
    file_service_properties                   = optional(any, null)
    account_replication_type                  = optional(string, null)
    public_network_access_enabled             = optional(bool, null)
    is_hns_enabled                            = optional(bool, null)
    min_tls_version                           = optional(string, null)
    shared_access_key_enabled                 = optional(bool, null)
    table_service_cors_propagation_wait       = optional(string, null)
    lock                                      = optional(any, null)
    role_assignments                          = optional(any, null)
    shares                                    = optional(any, null)
    allowed_copy_scope                        = optional(string, null)
    containers                                = optional(any, null)
    storage_management_policy_timeouts        = optional(any, null)
    allow_nested_items_to_be_public           = optional(bool, null)
    routing                                   = optional(any, null)
    private_endpoints                         = optional(any, null)
    diagnostic_settings_file                  = optional(any, null)
    sas_policy                                = optional(any, null)
    resource_types                            = optional(any, null)
    cross_tenant_replication_enabled          = optional(bool, null)
    default_to_oauth_authentication           = optional(bool, null)
    nfsv3_enabled                             = optional(bool, null)
    private_endpoints_manage_dns_zone_group   = optional(bool, null)
    storage_management_policy_rule            = optional(any, null)
    diagnostic_settings_storage_account       = optional(any, null)
    access_tier                               = optional(string, null)
    retry                                     = optional(any, null)
    account_tier                              = optional(string, null)
    azure_files_authentication                = optional(any, null)
    local_user                                = optional(any, null)
    local_user_enabled                        = optional(bool, null)
    immutability_policy                       = optional(any, null)
    diagnostic_settings_queue                 = optional(any, null)
    https_traffic_only_enabled                = optional(bool, null)
    network_rules                             = optional(any, null)
    provisioned_billing_model_version         = optional(string, null)
    diagnostic_settings_blob                  = optional(any, null)
    tables                                    = optional(any, null)
    storage_data_lake_gen2_filesystems        = optional(any, null)
    large_file_share_enabled                  = optional(bool, null)
    table_encryption_key_type                 = optional(string, null)
    role_assignment_definition_lookup_enabled = optional(bool, null)
  }))
  default = {}
}
