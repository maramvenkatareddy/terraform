variable "target_region" {
  type              = string
  default           = "centralindia"
}


variable "address_space_range" {
    type            =  list(string)
    default         =  ["10.0.0.0/16"]
}


variable "resource_group_name" {
    type            = string
    default         = "devops"
}