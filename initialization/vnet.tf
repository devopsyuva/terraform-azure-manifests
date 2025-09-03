resource "azurerm_virtual_network" "vnet_demo" {
  # Arguments
  resource_group_name = azurerm_resource_group.rg_demo.name
  location            = var.region
  address_space       = var.vnet_cidr
  name                = var.vnet_name

  lifecycle {
    # ignore_changes = [ address_space ]
    # prevent_destroy = true
    # create_before_destroy = true
  }

  tags = merge(
    var.vnet_tags,
    local.common_tags
  )

  depends_on = [azurerm_resource_group.rg_demo]
}