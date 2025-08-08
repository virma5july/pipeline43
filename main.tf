resource "azurerm_resource_group" "shiva" {
  name     = "shiva-rg1"
  location = "australia east"
}

resource "azurerm_storage_account" "shivastg" {
  depends_on               = [azurerm_resource_group.shiva]
  name                     = "shivastgaccount1"
  resource_group_name      = "shiva-rg1"
  location                 = "australia east"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
#jitu bhai ki jay ho
#jay babab ki