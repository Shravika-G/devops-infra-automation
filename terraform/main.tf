resource "azurerm_resource_group" "devops" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "devops" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.devops.name
  location                 = azurerm_resource_group.devops.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "dev"
    project     = "devops-automation"
    owner       = "shr"
  }
}
