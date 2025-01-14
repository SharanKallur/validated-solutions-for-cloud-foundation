##################################################################################
# VARIABLES
##################################################################################

# vSphere Credentials

variable "vsphere_server" {
  type        = string
  description = "The fully qualified domain name or IP address of the vCenter Server instance. (e.g. sfo-w01-vc01.sfo.rainpole.io)"
}

variable "vsphere_username" {
  type        = string
  description = "The username to login to the vCenter Server instance. (e.g. administrator@vsphere.local)"
  default     = "administrator@vsphere.local"
}

variable "vsphere_password" {
  type        = string
  description = "The password for the login to the vCenter Server instance."
  sensitive   = true
}

variable "vsphere_insecure" {
  type        = bool
  description = "Set to true for self-signed certificates."
  default     = false
}

# Roles

variable "ca_vsphere_role" {
  type        = string
  description = "The name for the Cloud Assembly to vSphere custom role. (e.g. Cloudy Assembly to vSphere Integration)"
  default     = "Cloudy Assembly to vSphere Integration"
}

variable "vro_vsphere_role" {
  type        = string
  description = "The name for the vRealize Orchestrator to vSphere custom role. (e.g. vRealize Orchestrator to vSphere Integration)"
  default     = "vRealize Orchestrator to vSphere Integration"
}

variable "ca_vsphere_privileges" {
  type        = list(string)
  description = "The vSphere permissions for the Cloud Assembly to vSphere custom role."
}

variable "vro_vsphere_privileges" {
  type        = list(string)
  description = "The vSphere permissions for the vRealize Orchestrator to vSphere custom role."
}
