# terraform-azure-storage-storageaccount

Org-standard Terraform wrapper for: **storage accounts**.

Deploys into an existing resource group (passed in via `resource_group_name` / `location`) -- this module does not create the resource group itself. Compose with [terraform-azure-naming](https://github.com/<org>/terraform-azure-naming) for names and [terraform-azure-tags](https://github.com/<org>/terraform-azure-tags) for the `tags` input.

## Usage

```hcl
module "storage-storageaccount" {
  source = "git::https://github.com/<org>/terraform-azure-storage-storageaccount.git?ref=v1.0.0"

  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  tags                = module.tags.tags

  storage_accounts = {
    example = {
      # see Inputs below -- every field upstream supports, see linked AVM module docs for the full schema
    }
  }
}
```

See [`examples/basic`](examples/basic) for a minimal runnable (zero-instance) example.

## Inputs

Beyond the standard `resource_group_name`, `location`, `tags`, `enable_telemetry` module-level variables, each map variable below mirrors its upstream AVM module's inputs 1:1 (fields typed `any` carry complex nested upstream schemas -- see the linked module docs):

### `storage_accounts` (storage accounts)

Wraps [Azure/avm-res-storage-storageaccount/azurerm](https://registry.terraform.io/modules/Azure/avm-res-storage-storageaccount/azurerm/0.10.0) v0.10.0.

| Field | Type | Required | Notes |
| --- | --- | --- | --- |
| `name` | `string` | yes | Resource name. |
| `queue_encryption_key_type` | `string` | no |  |
| `account_sku_name` | `string` | no |  |
| `sftp_enabled` | `bool` | no |  |
| `table_properties` | `any` | no |  |
| `diagnostic_settings_table` | `any` | no |  |
| `queues` | `any` | no |  |
| `static_website` | `any` | no |  |
| `customer_managed_key` | `any` | no |  |
| `timeouts` | `any` | no |  |
| `queue_properties` | `any` | no |  |
| `account_kind` | `string` | no |  |
| `custom_domain` | `any` | no |  |
| `edge_zone` | `string` | no |  |
| `infrastructure_encryption_enabled` | `bool` | no |  |
| `managed_identities` | `any` | no |  |
| `blob_properties` | `any` | no |  |
| `file_service_properties` | `any` | no |  |
| `account_replication_type` | `string` | no |  |
| `public_network_access_enabled` | `bool` | no |  |
| `is_hns_enabled` | `bool` | no |  |
| `min_tls_version` | `string` | no |  |
| `shared_access_key_enabled` | `bool` | no |  |
| `table_service_cors_propagation_wait` | `string` | no |  |
| `lock` | `any` | no |  |
| `role_assignments` | `any` | no |  |
| `shares` | `any` | no |  |
| `allowed_copy_scope` | `string` | no |  |
| `containers` | `any` | no |  |
| `storage_management_policy_timeouts` | `any` | no |  |
| `allow_nested_items_to_be_public` | `bool` | no |  |
| `routing` | `any` | no |  |
| `private_endpoints` | `any` | no |  |
| `diagnostic_settings_file` | `any` | no |  |
| `sas_policy` | `any` | no |  |
| `resource_types` | `any` | no |  |
| `cross_tenant_replication_enabled` | `bool` | no |  |
| `default_to_oauth_authentication` | `bool` | no |  |
| `nfsv3_enabled` | `bool` | no |  |
| `private_endpoints_manage_dns_zone_group` | `bool` | no |  |
| `storage_management_policy_rule` | `any` | no |  |
| `diagnostic_settings_storage_account` | `any` | no |  |
| `access_tier` | `string` | no |  |
| `retry` | `any` | no |  |
| `account_tier` | `string` | no |  |
| `azure_files_authentication` | `any` | no |  |
| `local_user` | `any` | no |  |
| `local_user_enabled` | `bool` | no |  |
| `immutability_policy` | `any` | no |  |
| `diagnostic_settings_queue` | `any` | no |  |
| `https_traffic_only_enabled` | `bool` | no |  |
| `network_rules` | `any` | no |  |
| `provisioned_billing_model_version` | `string` | no |  |
| `diagnostic_settings_blob` | `any` | no |  |
| `tables` | `any` | no |  |
| `storage_data_lake_gen2_filesystems` | `any` | no |  |
| `large_file_share_enabled` | `bool` | no |  |
| `table_encryption_key_type` | `string` | no |  |
| `role_assignment_definition_lookup_enabled` | `bool` | no |  |
| `tags` | `map(string)` | no | Overrides the module-level `tags` for this entry only. |
| `enable_telemetry` | `bool` | no | Overrides the module-level `enable_telemetry` for this entry only. |

## Outputs

- `storage_accounts` -- map (same keys as the input) of every output from each created storage accounts.
