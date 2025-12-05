terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

backend "azurerm" {
    resource_group_name  = "agnityrg" 
    storage_account_name = "agnitystg"                              
    container_name       = "tfstate"                               
    key                  = "dev.terraform.tfstate"                
  }


}

provider "azurerm" {
  features {}
  subscription_id = "2fe6adb6-b639-4804-8d25-87b437c9cbe6"
  use_oidc = true
}
