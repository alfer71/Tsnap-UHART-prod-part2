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
    "uhart-pxesa-001.hartford.edu" = "421a935d-6b26-6eb0-2300-a4b6b9adfa96"
    "uhart-esm-001.hartford.edu" = "421ab4df-ec41-91e1-6ef6-5755f4437f8a"
    "uhart-pbesa-001.hartford.edu" = "421a9b4d-dc90-0091-a12a-6bbe1d4aebf5"
    "uhart-pxesa-003.hartford.edu" = "421a61c2-d59d-5584-9fda-8590e2ffa87a"
    "uhart-pxeaa-001.hartford.edu" = "421a27d2-c18e-e190-5049-25109e4a829c"
    "uhart-pxesa-006.hartford.edu" = "421a2540-5f29-d422-cc18-7dc3a0860938"
    "ban-prod-db-01.hartford.edu" =  "421ae63f-6492-de63-86b9-517139de5429"
  }
}

# Example: Output the server list
output "server_uuids" {
  value = var.serverlist
}
