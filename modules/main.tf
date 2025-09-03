module "vnet" {
  source = "./vnet" #Path based module or Registry module

  vnet_name = "VNetDemoTerraform"
  vnet_cidr = ["10.130.0.0/16"]
  subnet_cidrs = {
    "private_subnets" = ["10.130.1.0/24"]
    "public_subnets"  = ["10.130.0.0/24"]
  }
}