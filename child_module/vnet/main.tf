data "azurerm_resource_group" "this" {
  for_each = var.vnets

  name = each.value.rgname
}

resource "azurerm_virtual_network" "this" {
  for_each = var.vnets

  name                = each.value.vnetname
  location            = data.azurerm_resource_group.this[each.key].location
  resource_group_name = data.azurerm_resource_group.this[each.key].name
  address_space       = each.value.ads
}