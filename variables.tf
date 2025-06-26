variable "vsphere_server" {
  description = "vCenter server"
  type        = string
  default     = "vx-cc-vcenter.hartford.edu"
}

variable "vsphere_user" {
  description = "vCenter username"
  type        = string
  sensitive   = true
}

variable "vsphere_password" {
  description = "vCenter password"
  type        = string
  sensitive   = true
}

variable "serverlist" {
  description = "Map of FQDN to VM UUID"
  type        = map(string)
  default = {
    "uhart-dxesa-002.hartford.edu" = "421a3ed8-a349-1bcb-26c5-56e36da8b5a5"
    "uhart-dxesa-003.hartford.edu" = "421a6344-024d-bc9c-b0c0-28d3c566ba20"
    "uhart-dxeaa-003.hartford.edu" = "421afca3-cb74-bd81-b954-d86486860761"
    "uhart-dxesa-001.hartford.edu" = "421ac74e-49a8-8a8b-8528-2320edd401d0"
    "uhart-dbesa-001.hartford.edu" = "421a0388-7166-d560-c141-5aea7fc2d0a7"
    "uhart-dxeaa-001.hartford.edu" = "421abf53-e95d-62c5-3fc4-618519077dec"
    "uhart-dxeaa-002.hartford.edu" = "421af966-7427-d3d3-9670-9add9ff207c1"
    "ban-test-db-01.hartford.edu" = "421aa04b-2756-77b9-43e3-fb007873987a"
  }
}

# Example: Output the server list
output "server_uuids" {
  value = var.serverlist
}
