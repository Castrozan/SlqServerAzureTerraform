terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_mssql_server" "sql" {
  name                = "nome-do-servidor-do-banco"
  resource_group_name = var.resource_group_name
  location            = var.location
  version             = "12.0"

  administrator_login          = var.usuario_admin
  administrator_login_password = var.password
}

resource "azurerm_mssql_database" "sql" {
  name      = "nome-do-banco-de-dados"
  server_id = azurerm_mssql_server.sql.id
  collation = "SQL_Latin1_General_CP1_CI_AS"

  auto_pause_delay_in_minutes = -1
  max_size_gb                 = 32
  min_capacity                = 10
  read_replica_count          = 0
  read_scale                  = false
  sku_name                    = "GP_S_Gen5_10"
  zone_redundant              = false
}

resource "azurerm_mssql_firewall_rule" "sql" {
  name                = "FirewallRule1"
  server_id           = azurerm_mssql_server.sql.id
  start_ip_address    = var.ip
  end_ip_address      = var.ip
}