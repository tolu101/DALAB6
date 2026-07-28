terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.16.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "7f1c734d-bd3a-4224-84a5-fea5837caa5d"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "jenkins-sa-mlsu72"
    storage_account_name = "jenkinsstatemlsu72"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "example" {
  name     = "rg-mlsu72-test-2"
  location = "westeurope"
}
