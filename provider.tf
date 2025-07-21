terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

backend "azurerm" {
    resource_group_name = "g31-rg"
    storage_account_name = "backendstorageterraform"                              
    container_name       = "backend-container"                               
    key                  = "prod.terraform.tfstate"                
  }


}

provider "azurerm" {
  features {}
  subscription_id = "ba3dd1c9-2ade-4648-a13f-65581e2a2874"
}
