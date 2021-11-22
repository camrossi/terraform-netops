output "tenant_id" {
  value = aci_tenant.tenant.id
}

output "bd_id" {   
  value = aci_bridge_domain.bd.id            
}