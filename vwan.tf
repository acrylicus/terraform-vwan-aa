#
# Create vWAN
#

resource "azurerm_virtual_wan" "vwan" {
  name                = "vwan-${var.resource_suffix}"
  location            = var.region
  resource_group_name = var.resource_group
}

# Create vWAN Hubs

resource "azurerm_virtual_hub" "euwest" {
  name                = "vwan-hub-euwest-${var.resource_suffix}"
  location            = var.region
  resource_group_name = var.resource_group
  virtual_wan_id      = azurerm_virtual_wan.vwan.id
  address_prefix      = "10.0.250.0/23"
}

resource "azurerm_virtual_hub" "eunorth" {
  name                = "vwan-hub-eunorth-${var.resource_suffix}"
  location            = var.region_2
  resource_group_name = var.resource_group
  virtual_wan_id      = azurerm_virtual_wan.vwan.id
  address_prefix      = "10.1.250.0/23"
}

resource "azurerm_virtual_hub" "uksouth" {
  name                = "vwan-hub-uksouth-${var.resource_suffix}"
  location            = var.region_3
  resource_group_name = var.resource_group
  virtual_wan_id      = azurerm_virtual_wan.vwan.id
  address_prefix      = "10.2.250.0/23"
}

#
# Connect the VNETs to the VHUBS
#

# EU West

resource "azurerm_virtual_hub_connection" "vnc-vnet1" {
  name                      = "vnc-vnet1-${var.resource_suffix}"
  virtual_hub_id            = azurerm_virtual_hub.euwest.id
  remote_virtual_network_id = azurerm_virtual_network.vnet1.id
  internet_security_enabled = true
}

resource "azurerm_virtual_hub_connection" "vnc-vnet2" {
  name                      = "vnc-vnet2-${var.resource_suffix}"
  virtual_hub_id            = azurerm_virtual_hub.euwest.id
  remote_virtual_network_id = azurerm_virtual_network.vnet2.id
  internet_security_enabled = true
}

# EU North

resource "azurerm_virtual_hub_connection" "vnc-vnet3" {
  name                      = "vnc-vnet3-${var.resource_suffix}"
  virtual_hub_id            = azurerm_virtual_hub.eunorth.id
  remote_virtual_network_id = azurerm_virtual_network.vnet3.id
  internet_security_enabled = true
}

resource "azurerm_virtual_hub_connection" "vnc-vnet4" {
  name                      = "vnc-vnet4-${var.resource_suffix}"
  virtual_hub_id            = azurerm_virtual_hub.eunorth.id
  remote_virtual_network_id = azurerm_virtual_network.vnet4.id
  internet_security_enabled = true
}

# UK South

resource "azurerm_virtual_hub_connection" "vnc-vnet5" {
  name                      = "vnc-vnet5-${var.resource_suffix}"
  virtual_hub_id            = azurerm_virtual_hub.uksouth.id
  remote_virtual_network_id = azurerm_virtual_network.vnet5.id
  internet_security_enabled = true
}

resource "azurerm_virtual_hub_connection" "vnc-vnet6" {
  name                      = "vnc-vnet6-${var.resource_suffix}"
  virtual_hub_id            = azurerm_virtual_hub.uksouth.id
  remote_virtual_network_id = azurerm_virtual_network.vnet6.id
  internet_security_enabled = true
}

