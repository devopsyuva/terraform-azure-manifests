resource "azurerm_subnet" "private_subnet" {
  for_each             = var.subnet_cidrs
  name                 = each.key
  resource_group_name  = azurerm_resource_group.rg_demo.name
  virtual_network_name = azurerm_virtual_network.vnet_demo.name
  address_prefixes     = each.value

  depends_on = [azurerm_resource_group.rg_demo, azurerm_virtual_network.vnet_demo]
}