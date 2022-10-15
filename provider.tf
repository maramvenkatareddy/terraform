terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
    backend "azurerm" {
        resource_group_name  = "tfstate"
        storage_account_name = "adityaterraformbackend"
        container_name       = "terraformstate"
        key                  = "terraform2.tfstate"
    }

}

provider "azurerm" {
  features {}
}

