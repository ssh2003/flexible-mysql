terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "stands"
      storage_account_name = "skhylyktfstate"
      container_name       = "mysql"
      key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}