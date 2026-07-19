rgs = {
  rg1 = {
    rgname     = "rg-dev-nova-01"
    rglocation = "Central India"
  }
}

vnets = {
  vnet1 = {
    rgname  = "rg-dev-nova-01"
    vnetname = "vnet-dev-nova-01"
    ads      = ["10.0.0.0/16"]
  }
}

subnets = {
  frontend = {
    rgname    = "rg-dev-nova-01"
    vnetname  = "vnet-dev-nova-01"
    subnetname = "snet-frontend"
    apf        = ["10.0.1.0/24"]
  }

  backend = {
    rgname    = "rg-dev-nova-01"
    vnetname  = "vnet-dev-nova-01"
    subnetname = "snet-backend"
    apf        = ["10.0.2.0/24"]
  }

  bastion = {
    rgname    = "rg-dev-nova-01"
    vnetname  = "vnet-dev-nova-01"
    subnetname = "AzureBastionSubnet"
    apf        = ["10.0.3.0/24"]
  }

  appgw = {
    rgname    = "rg-dev-nova-01"
    vnetname  = "vnet-dev-nova-01"
    subnetname = "snet-appgw"
    apf        = ["10.0.4.0/24"]
  }
}