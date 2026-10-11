resource "oci_datacc_vm_cluster_network" "datacc_vm_cluster_networks" {
  for_each = var.datacc_vm_cluster_networks

  compartment_id    = each.value.compartment_id
  display_name      = each.value.display_name
  infrastructure_id = each.value.infrastructure_id
  consumer_type     = each.value.consumer_type
  defined_tags      = each.value.defined_tags
  dns_servers       = each.value.dns_servers
  freeform_tags     = each.value.freeform_tags
  listener_port     = each.value.listener_port
  listener_port_ssl = each.value.listener_port_ssl
  node_count        = each.value.node_count
  ntp_servers       = each.value.ntp_servers

  dynamic "vm_networks" {
    for_each = each.value.vm_networks
    content {
      domain_name  = vm_networks.value.domain_name
      gateway      = vm_networks.value.gateway
      netmask      = vm_networks.value.netmask
      network_type = vm_networks.value.network_type
      dynamic "nodes" {
        for_each = vm_networks.value.nodes
        content {
          hostname     = nodes.value.hostname
          ip           = nodes.value.ip
          vip          = nodes.value.vip
          vip_hostname = nodes.value.vip_hostname
        }
      }
      prefix  = vm_networks.value.prefix
      vlan_id = vm_networks.value.vlan_id
    }
  }

  dynamic "scans" {
    for_each = each.value.scans != null ? each.value.scans : []
    content {
      hostname = scans.value.hostname
      ips      = scans.value.ips
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

