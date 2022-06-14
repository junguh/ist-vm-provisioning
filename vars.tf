variable "vsphere_server" {
  type = string
  description = "Hostname or IP address of your vCenter server" 
}
variable "vsphere_user" {
  type = string
  description = "Username for vsphere"
}
variable "vsphere_password" {
  type = string
  description = "The password for vsphere"
}
variable "datacenter" {
  type = string
  description = "The datacenter the resources will be created in"
}
variable "resource_pool" {
  type = string
  description = "Name of the resource pool"
}
variable "datastore_name" {
  type = string
  description = "Name of the Datastore name"
}
// The name of the network to use.
variable "network_name" {
  type = string
  description = "Name of the network"
}
// The name of the template to use when cloning.
variable "template_name" {
  type = string
  description = "Name of the template"
}
// The virtual machine cpu
variable "vm_cpu" {
  type = number
  description = "Number of vCPUs"
}
variable "vm_memory" {
  type = number
  description = "Amount of memory in MB"
}
variable "vm_prefix" {
  type = string
  description = "The name prefix of the virtual machines to create"
}

variable "vm_folder" {
  type = string
  description = "Name of folder"
}
variable "vm_count" {
  type = number
  description = "Number of VMs to provision"
}
variable "vm_domain" {
  type = string
  description = "Domain Name for the virtual machine"
}

variable "master_ips" {
  type        = map(any)
  description = "List of IPs used for Linux VMs."
  default = { "0" = "10.70.136.241" 
    "1" = "10.70.136.242" 
    "2" = "10.70.136.243" 
    "3" = "10.70.136.244" 
    "4" = "10.70.136.245" 
    "5" = "10.70.136.246" 
    "6" = "10.70.136.247" 
    "7" = "10.70.136.248" 
    "8" = "10.70.136.249" 
    "9" = "10.70.136.250"
  } 
}

variable "ipv4_netmask" {
  type = string
  description = "The IPv4 subnet mask, in bits (example: 24 for 255.255.255.0)."
}

variable "ipv4_gateway" {
  type = string
  description = "The IPv4 default gateway."
}

variable "dns_server_list" {
  type = string
  description = "The list of DNS servers to configure on the virtual machine."
}
