output "storage_accounts" {
  description = "Map (same keys as var.storage_accounts) of every output from each storage accounts created -- see upstream module docs for the full shape."
  value       = module.storage_account
}
