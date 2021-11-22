variable "apic" {
    type = object({
    username          = string
    cert_name         = string
    private_key       = string
    url          = string
    })
    default = {
    username          = "ansible"
    cert_name         = "ansible.crt"
    private_key       = "/Users/camrossi/Coding/aci-certs/ansible.key"
    url          = "https://fab2-apic1.cam.ciscolabs.com/"
  }
}

variable "tenant" {
  type = string
}

variable "vrf" {
  type = string
}
variable "bd" {
  type = string  
}

variable "tag" {
  type = string  
}

