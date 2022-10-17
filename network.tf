resource "azurerm_resource_group" "my_terraform" {
    name                    =  var.resource_group_name
    location                =  var.target_region
}

resource "azurerm_virtual_network" "my_vnet" {
    name                    =   "vnet_terraform"
    resource_group_name     =   var.resource_group_name 
    address_space           =   var.address_space_range
    location                =   var.target_region

}