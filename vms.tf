#
#
## VM 1
#
#

# Create the NIC
resource "azurerm_network_interface" "nic-vm1" {
  name                = "nic-vm1-${var.resource_suffix}"
  location            = var.region
  resource_group_name = var.resource_group

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.vnet1-snet.id
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.0.1.4"

  }
}

# Create the VM
resource "azurerm_linux_virtual_machine" "vm1" {
  name                            = "vm1-${var.resource_suffix}"
  resource_group_name             = var.resource_group
  location                        = var.region
  size                            = "Standard_B1s"
  admin_username                  = var.username
  admin_password                  = var.password
  disable_password_authentication = false
  network_interface_ids           = [azurerm_network_interface.nic-vm1.id]
  boot_diagnostics {}

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}


#
#
## VM 2
#
#

# Create the NIC
resource "azurerm_network_interface" "nic-vm2" {
  name                = "nic-vm2-${var.resource_suffix}"
  location            = var.region
  resource_group_name = var.resource_group

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.vnet2-snet.id
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.0.2.4"

  }
}

# Create the VM
resource "azurerm_linux_virtual_machine" "vm2" {
  name                            = "vm2-${var.resource_suffix}"
  resource_group_name             = var.resource_group
  location                        = var.region
  size                            = "Standard_B1s"
  admin_username                  = var.username
  admin_password                  = var.password
  disable_password_authentication = false
  network_interface_ids           = [azurerm_network_interface.nic-vm2.id]
  boot_diagnostics {}

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}

#
#
## VM 3
#
#

# Create the NIC
resource "azurerm_network_interface" "nic-vm3" {
  name                = "nic-vm3-${var.resource_suffix}"
  location            = var.region_2
  resource_group_name = var.resource_group

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.vnet3-snet.id
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.1.3.4"

  }
}

# Create the VM
resource "azurerm_linux_virtual_machine" "vm3" {
  name                            = "vm3-${var.resource_suffix}"
  resource_group_name             = var.resource_group
  location                        = var.region_2
  size                            = "Standard_B1s"
  admin_username                  = var.username
  admin_password                  = var.password
  disable_password_authentication = false
  network_interface_ids           = [azurerm_network_interface.nic-vm3.id]
  boot_diagnostics {}

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}

#
#
## VM 4
#
#

# Create the NIC
resource "azurerm_network_interface" "nic-vm4" {
  name                = "nic-vm4-${var.resource_suffix}"
  location            = var.region_2
  resource_group_name = var.resource_group

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.vnet4-snet.id
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.1.4.4"

  }
}

# Create the VM
resource "azurerm_linux_virtual_machine" "vm4" {
  name                            = "vm4-${var.resource_suffix}"
  resource_group_name             = var.resource_group
  location                        = var.region_2
  size                            = "Standard_B1s"
  admin_username                  = var.username
  admin_password                  = var.password
  disable_password_authentication = false
  network_interface_ids           = [azurerm_network_interface.nic-vm4.id]
  boot_diagnostics {}

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}


#
#
## VM 5
#
#

# Create the NIC
resource "azurerm_network_interface" "nic-vm5" {
  name                = "nic-vm5-${var.resource_suffix}"
  location            = var.region_3
  resource_group_name = var.resource_group

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.vnet5-snet.id
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.2.5.4"

  }
}

# Create the VM
resource "azurerm_linux_virtual_machine" "vm5" {
  name                            = "vm5-${var.resource_suffix}"
  resource_group_name             = var.resource_group
  location                        = var.region_3
  size                            = "Standard_B1s"
  admin_username                  = var.username
  admin_password                  = var.password
  disable_password_authentication = false
  network_interface_ids           = [azurerm_network_interface.nic-vm5.id]
  boot_diagnostics {}

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}

#
#
## VM 6
#
#

# Create the NIC
resource "azurerm_network_interface" "nic-vm6" {
  name                = "nic-vm6-${var.resource_suffix}"
  location            = var.region_3
  resource_group_name = var.resource_group

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.vnet6-snet.id
    private_ip_address_allocation = "Static"
    private_ip_address            = "10.2.6.4"

  }
}

# Create the VM
resource "azurerm_linux_virtual_machine" "vm6" {
  name                            = "vm6-${var.resource_suffix}"
  resource_group_name             = var.resource_group
  location                        = var.region_3
  size                            = "Standard_B1s"
  admin_username                  = var.username
  admin_password                  = var.password
  disable_password_authentication = false
  network_interface_ids           = [azurerm_network_interface.nic-vm6.id]
  boot_diagnostics {}

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}