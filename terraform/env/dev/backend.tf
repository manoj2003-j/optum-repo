
#

terraform {
    backend "azurerm" {
        resource_group_name = "admincentral-devops-nprd-usc-rg-xyz"
        storage_account_name = "umcsnprduscdevopssta"
        container_name = "dev"
        key = "dev.tfstate"
    }
}