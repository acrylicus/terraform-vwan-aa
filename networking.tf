# Create VNETs & Subnets

# 10.0.X.X = EU West
# 10.1.X.X = EU North
# 10.2.X.X = UK South

# -----

resource "azurerm_virtual_network" "vnet1" {
  name                = "vnet1-${var.resource_suffix}"
  location            = var.region
  resource_group_name = var.resource_group
  address_space       = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "vnet1-snet" {
  name             = "vnet1-snet-${var.resource_suffix}"
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes = ["10.0.1.0/28"]
  resource_group_name = var.resource_group
}

# -----

resource "azurerm_virtual_network" "vnet2" {
  name                = "vnet2-${var.resource_suffix}"
  location            = var.region
  resource_group_name = var.resource_group
  address_space       = ["10.0.2.0/24"]
}

resource "azurerm_subnet" "vnet2-snet" {
  name             = "vnet2-snet-${var.resource_suffix}"
  virtual_network_name = azurerm_virtual_network.vnet2.name
  address_prefixes = ["10.0.2.0/28"]
  resource_group_name = var.resource_group
}

# ------

resource "azurerm_virtual_network" "vnet3" {
  name                = "vnet3-${var.resource_suffix}"
  location            = var.region_2
  resource_group_name = var.resource_group
  address_space       = ["10.1.3.0/24"]
}

resource "azurerm_subnet" "vnet3-snet" {
  name             = "vnet3-snet-${var.resource_suffix}"
  virtual_network_name = azurerm_virtual_network.vnet3.name
  address_prefixes = ["10.1.3.0/28"]
  resource_group_name = var.resource_group
}

# -------

resource "azurerm_virtual_network" "vnet4" {
  name                = "vnet4-${var.resource_suffix}"
  location            = var.region_2
  resource_group_name = var.resource_group
  address_space       = ["10.1.4.0/24"]
}

resource "azurerm_subnet" "vnet4-snet" {
  name             = "vnet4-snet-${var.resource_suffix}"
  virtual_network_name = azurerm_virtual_network.vnet4.name
  address_prefixes = ["10.1.4.0/28"]
  resource_group_name = var.resource_group
}

# ------

resource "azurerm_virtual_network" "vnet5" {
  name                = "vnet5-${var.resource_suffix}"
  location            = var.region_3
  resource_group_name = var.resource_group
  address_space       = ["10.2.5.0/24"]
}

resource "azurerm_subnet" "vnet5-snet" {
  name             = "vnet5-snet-${var.resource_suffix}"
  virtual_network_name = azurerm_virtual_network.vnet5.name
  address_prefixes = ["10.2.5.0/28"]
  resource_group_name = var.resource_group
}

# ------

resource "azurerm_virtual_network" "vnet6" {
  name                = "vnet6-${var.resource_suffix}"
  location            = var.region_3
  resource_group_name = var.resource_group
  address_space       = ["10.2.6.0/24"]
}

resource "azurerm_subnet" "vnet6-snet" {
  name             = "vnet6-snet-${var.resource_suffix}"
  virtual_network_name = azurerm_virtual_network.vnet6.name
  address_prefixes = ["10.2.6.0/28"]
  resource_group_name = var.resource_group
}

# ------
