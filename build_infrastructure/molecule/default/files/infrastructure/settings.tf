terraform {
  required_providers {
    opentelekomcloud = ">= 1.15.0"
  }
}

# Configure the OpenTelekomCloud Provider
provider "opentelekomcloud" {
  domain_name = "OTC00000000001000000448"
  tenant_name = "eu-de_csm"
  auth_url = "https://iam.eu-de.otc.t-systems.com/v3"
  region = "eu-de"
}
