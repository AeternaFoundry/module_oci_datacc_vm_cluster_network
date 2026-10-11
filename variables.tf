variable "datacc_vm_cluster_networks" {
  description = <<EOT
Map of datacc_vm_cluster_networks, attributes below
Required:
    - compartment_id
    - display_name
    - infrastructure_id
    - vm_networks (block):
        - domain_name (required)
        - gateway (required)
        - netmask (required)
        - network_type (required)
        - nodes (required, block):
            - hostname (required)
            - ip (required)
            - vip (optional)
            - vip_hostname (optional)
        - prefix (optional)
        - vlan_id (optional)
Optional:
    - consumer_type
    - defined_tags
    - dns_servers
    - freeform_tags
    - listener_port
    - listener_port_ssl
    - node_count
    - ntp_servers
    - scans (block):
        - hostname (required)
        - ips (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id    = string
    display_name      = string
    infrastructure_id = string
    consumer_type     = optional(string)
    defined_tags      = optional(map(string))
    dns_servers       = optional(list(string))
    freeform_tags     = optional(map(string))
    listener_port     = optional(number)
    listener_port_ssl = optional(number)
    node_count        = optional(number)
    ntp_servers       = optional(list(string))
    vm_networks = list(object({
      domain_name  = string
      gateway      = string
      netmask      = string
      network_type = string
      nodes = list(object({
        hostname     = string
        ip           = string
        vip          = optional(string)
        vip_hostname = optional(string)
      }))
      prefix  = optional(string)
      vlan_id = optional(string)
    }))
    scans = optional(list(object({
      hostname = string
      ips      = list(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.datacc_vm_cluster_networks : (
        length(v.vm_networks) >= 1
      )
    ])
    error_message = "Each vm_networks list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.datacc_vm_cluster_networks : (
        alltrue([for item in v.vm_networks : (length(item.nodes) >= 1)])
      )
    ])
    error_message = "Each nodes list must contain at least 1 items"
  }
}

