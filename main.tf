resource "azurerm_resource_group" "my_terraform" {
    name                    =  "terraform"
    location                =  "centralindia"
}
resource "azurerm_virtual_network" "my_vnet" {
    name                    =   "vnet_terraform"
    resource_group_name     =   "terraform" 
    address_space           =   ["10.0.0.0/16"]
    location                =   "centralindia"
    depends_on = [
      azurerm_resource_group.my_terraform
    ]

}
resource "azurerm_subnet" "my_subnet" {
    name                    =   "subnet"
    resource_group_name     =   "terraform" 
    virtual_network_name    =   "vnet_terraform"
    address_prefixes        =   ["10.0.1.0/24"]

    depends_on = [
      azurerm_virtual_network.my_vnet
    ]
}
