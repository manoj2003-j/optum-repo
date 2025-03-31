
# tenant
data "azurerm_client_config" "current" {

}

module "creating-random-name" {
   source     = "./module/random-name"
}
locals {
    random_name = "${modules.creating-random-name.result}"
}

# Resource group

module "creating-Resourcegroup"{
    source = "./modules/Resourcegroup"
    Resource_group_name = "${var.tf_appname}-${var.tf_env}-${var.tf_region}-rg-${local.random_name}"
    location = var.tf_location
    tags = var.tags
}
