output "tenant_name" {
  value = aci_tenant.tenant.name
}

output "vrf_name" {
  value = aci_vrf.vrf.name
}

output "bd_name" {   
  value = aci_bridge_domain.bd.name            
}