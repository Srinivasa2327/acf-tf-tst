terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 3.31.0"
 /*      configuration_aliases = [
        azurerm.identity,
        azurerm.connectivity
      ] */
    }
  }
}

provider "azurerm" {
  #subscription_id = "1797cdd8-f92a-4272-ab4f-25d8ab9c0564"
  subscription_id = "f0171206-1198-46e5-becd-b0d858a02b8e"
  alias           = "identity"
  tenant_id       = "8221a120-d92b-4906-8da8-98f9b7e392fd"
  client_id       = "c3491c87-0a13-486b-8f4f-b89b94d341d3" 
  use_oidc = true
  features {}
}

resource "azurerm_resource_group" "testRG" {
  provider = azurerm.identity
  name     = "rg-test-core"
  location = "westeurope"
}
