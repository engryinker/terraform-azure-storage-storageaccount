terraform {
  required_version = ">= 1.7.0"
}

module "storage-storageaccount" {
  source = "../.."

  resource_group_name = "rg-example"
  location            = "eastus"
  tags = {
    environment = "dev"
  }

  storage_accounts = {} # see README Inputs table / upstream module docs for the per-entry schema
}
