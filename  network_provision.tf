provider "aci" {
  # cisco-aci user name
  username = var.apic.username
  cert_name = var.apic.cert_name
  private_key = var.apic.private_key
  url      = var.apic.url 
  insecure = true
}

resource "aci_tenant" "tenant" {
  name = var.tenant
  
}

resource "aci_vrf" "vrf" {
  tenant_dn = aci_tenant.tenant.id
  name      = var.vrf
}


resource "aci_bridge_domain" "bdapp1" {
  tenant_dn = aci_tenant.tenant.id
  name      = var.bd
  unicast_route = "yes"
  relation_fv_rs_ctx = aci_vrf.vrf.id
}

resource "aci_subnet" "subnet" {
        parent_dn        = aci_bridge_domain.bdapp1.id
        ip               = "10.0.0.1/16"
        preferred        = "no"
        scope            = ["private"]
    }