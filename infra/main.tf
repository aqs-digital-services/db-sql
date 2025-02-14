provider "azurerm" {
  features {}
}

resource "azurerm_postgresql_flexible_server" "pg_server" {
  name                   = var.db_server_name
  resource_group_name    = var.resource_group_name
  location               = var.location
  version                = "15"
  administrator_login    = var.db_admin
  administrator_password = var.db_password
  sku_name               = "B_Standard_B1ms"
  storage_mb = 32768
}
