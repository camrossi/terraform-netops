output "tenant_name" {
  value = aci_tenant.terraform_ten.name
}

output "vrf_name" {
  value = aci_vrf.vrf1.name
}

output "bd_name" {   
  value = aci_bridge_domain.bd1.name            
}