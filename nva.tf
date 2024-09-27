
# EU West hub
resource "azurerm_managed_application" "fgtinvhubeuwest" {
  name                        = "fgtnvaeuwest-jmorris"
  location                    = var.region
  resource_group_name         = var.resource_group
  kind                        = "MarketPlace"
  managed_resource_group_name = "${var.resource_group}-fgtinvhubeuwest-mrg"

  parameter_values = jsonencode({
    adminUsername = {
      value = var.username
    },
    adminPassword = {
      value = var.password
    },
    fortiGateNamePrefix = {
      value = "fgt"
    },
    fortiGateImageVersion = {
      value = "7.4.4"
    },
    hubId = {
      value = azurerm_virtual_hub.euwest.id
    },
    fortiGateASN = {
      value = "65400"
    },
    scaleUnit = {
      value = "4"
    },
    hubRouters = {
      value = azurerm_virtual_hub.euwest.virtual_router_ips
    },
    hubASN = {
      value = "65515"
    },
    vwandeploymentType = {
        "value": "sdfw"
    },
    location = {
      value = var.region
    },
    fortiManagerIP = {
      value = var.fmgr_ip
    },
    fortiManagerSerial = {
      value = var.fmgr_serial
    }
  })
  plan {
    name      = "fortigate-managedvwan"
    product   = "fortigate_vwan_nva"
    publisher = "fortinet"
    version   = "7.4.400260724"
  }
}

# EU West hub
resource "azurerm_managed_application" "fgtinvhubeunorth" {
  name                        = "fgtnvaeunorth-jmorris"
  location                    = var.region_2
  resource_group_name         = var.resource_group
  kind                        = "MarketPlace"
  managed_resource_group_name = "${var.resource_group}-fgtinvhubeunorth-mrg"

  parameter_values = jsonencode({
    adminUsername = {
      value = var.username
    },
    adminPassword = {
      value = var.password
    },
    fortiGateNamePrefix = {
      value = "fgt"
    },
    fortiGateImageVersion = {
      value = "7.4.4"
    },
    hubId = {
      value = azurerm_virtual_hub.eunorth.id
    },
    fortiGateASN = {
      value = "65401"
    },
    scaleUnit = {
      value = "4"
    },
    hubRouters = {
      value = azurerm_virtual_hub.eunorth.virtual_router_ips
    },
    hubASN = {
      value = "65515"
    },
    vwandeploymentType = {
        "value": "sdfw"
    },
    location = {
      value = var.region_2
    },
    fortiManagerIP = {
      value = var.fmgr_ip
    },
    fortiManagerSerial = {
      value = var.fmgr_serial
    }
  })
  plan {
    name      = "fortigate-managedvwan"
    product   = "fortigate_vwan_nva"
    publisher = "fortinet"
    version   = "7.4.400260724"
  }
}

# UK South hub
resource "azurerm_managed_application" "fgtinvhubuksouth" {
  name                        = "fgtnvauksouth-jmorris"
  location                    = var.region_3
  resource_group_name         = var.resource_group
  kind                        = "MarketPlace"
  managed_resource_group_name = "${var.resource_group}-fgtnvauksouth-mrg"

  parameter_values = jsonencode({
    adminUsername = {
      value = var.username
    },
    adminPassword = {
      value = var.password
    },
    fortiGateNamePrefix = {
      value = "fgt"
    },
    fortiGateImageVersion = {
      value = "7.4.4"
    },
    hubId = {
      value = azurerm_virtual_hub.uksouth.id
    },
    fortiGateASN = {
      value = "65402"
    },
    scaleUnit = {
      value = "4"
    },
    hubRouters = {
      value = azurerm_virtual_hub.uksouth.virtual_router_ips
    },
    hubASN = {
      value = "65515"
    },
    vwandeploymentType = {
        "value": "sdfw"
    },
    location = {
      value = var.region_3
    },
    fortiManagerIP = {
      value = var.fmgr_ip
    },
    fortiManagerSerial = {
      value = var.fmgr_serial
    }
  })
  plan {
    name      = "fortigate-managedvwan"
    product   = "fortigate_vwan_nva"
    publisher = "fortinet"
    version   = "7.4.400260724"
  }
}