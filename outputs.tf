output "datacc_vm_cluster_networks_id" {
  description = "Map of id values across all datacc_vm_cluster_networks, keyed the same as var.datacc_vm_cluster_networks except keys with no id are omitted"
  value       = { for k, v in oci_datacc_vm_cluster_network.datacc_vm_cluster_networks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "datacc_vm_cluster_networks_associated_resource_id" {
  description = "Map of associated_resource_id values across all datacc_vm_cluster_networks, keyed the same as var.datacc_vm_cluster_networks except keys with no associated_resource_id are omitted"
  value       = { for k, v in oci_datacc_vm_cluster_network.datacc_vm_cluster_networks : k => v.associated_resource_id if v.associated_resource_id != null && length(v.associated_resource_id) > 0 }
}
output "datacc_vm_cluster_networks_base_vm_cluster_id" {
  description = "Map of base_vm_cluster_id values across all datacc_vm_cluster_networks, keyed the same as var.datacc_vm_cluster_networks except keys with no base_vm_cluster_id are omitted"
  value       = { for k, v in oci_datacc_vm_cluster_network.datacc_vm_cluster_networks : k => v.base_vm_cluster_id if v.base_vm_cluster_id != null && length(v.base_vm_cluster_id) > 0 }
}
output "datacc_vm_cluster_networks_compartment_id" {
  description = "Map of compartment_id values across all datacc_vm_cluster_networks, keyed the same as var.datacc_vm_cluster_networks except keys with no compartment_id are omitted"
  value       = { for k, v in oci_datacc_vm_cluster_network.datacc_vm_cluster_networks : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "datacc_vm_cluster_networks_consumer_type" {
  description = "Map of consumer_type values across all datacc_vm_cluster_networks, keyed the same as var.datacc_vm_cluster_networks except keys with no consumer_type are omitted"
  value       = { for k, v in oci_datacc_vm_cluster_network.datacc_vm_cluster_networks : k => v.consumer_type if v.consumer_type != null && length(v.consumer_type) > 0 }
}
output "datacc_vm_cluster_networks_defined_tags" {
  description = "Map of defined_tags values across all datacc_vm_cluster_networks, keyed the same as var.datacc_vm_cluster_networks except keys with no defined_tags are omitted"
  value       = { for k, v in oci_datacc_vm_cluster_network.datacc_vm_cluster_networks : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "datacc_vm_cluster_networks_display_name" {
  description = "Map of display_name values across all datacc_vm_cluster_networks, keyed the same as var.datacc_vm_cluster_networks except keys with no display_name are omitted"
  value       = { for k, v in oci_datacc_vm_cluster_network.datacc_vm_cluster_networks : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "datacc_vm_cluster_networks_dns_servers" {
  description = "Map of dns_servers values across all datacc_vm_cluster_networks, keyed the same as var.datacc_vm_cluster_networks except keys with no dns_servers are omitted"
  value       = { for k, v in oci_datacc_vm_cluster_network.datacc_vm_cluster_networks : k => v.dns_servers if v.dns_servers != null && length(v.dns_servers) > 0 }
}
output "datacc_vm_cluster_networks_freeform_tags" {
  description = "Map of freeform_tags values across all datacc_vm_cluster_networks, keyed the same as var.datacc_vm_cluster_networks except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_datacc_vm_cluster_network.datacc_vm_cluster_networks : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "datacc_vm_cluster_networks_infrastructure_id" {
  description = "Map of infrastructure_id values across all datacc_vm_cluster_networks, keyed the same as var.datacc_vm_cluster_networks except keys with no infrastructure_id are omitted"
  value       = { for k, v in oci_datacc_vm_cluster_network.datacc_vm_cluster_networks : k => v.infrastructure_id if v.infrastructure_id != null && length(v.infrastructure_id) > 0 }
}
output "datacc_vm_cluster_networks_is_scan_enabled" {
  description = "Map of is_scan_enabled values across all datacc_vm_cluster_networks, keyed the same as var.datacc_vm_cluster_networks except keys with no is_scan_enabled are omitted"
  value       = { for k, v in oci_datacc_vm_cluster_network.datacc_vm_cluster_networks : k => v.is_scan_enabled if v.is_scan_enabled != null }
}
output "datacc_vm_cluster_networks_lifecycle_details" {
  description = "Map of lifecycle_details values across all datacc_vm_cluster_networks, keyed the same as var.datacc_vm_cluster_networks except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_datacc_vm_cluster_network.datacc_vm_cluster_networks : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "datacc_vm_cluster_networks_listener_port" {
  description = "Map of listener_port values across all datacc_vm_cluster_networks, keyed the same as var.datacc_vm_cluster_networks except keys with no listener_port are omitted"
  value       = { for k, v in oci_datacc_vm_cluster_network.datacc_vm_cluster_networks : k => v.listener_port if v.listener_port != null }
}
output "datacc_vm_cluster_networks_listener_port_ssl" {
  description = "Map of listener_port_ssl values across all datacc_vm_cluster_networks, keyed the same as var.datacc_vm_cluster_networks except keys with no listener_port_ssl are omitted"
  value       = { for k, v in oci_datacc_vm_cluster_network.datacc_vm_cluster_networks : k => v.listener_port_ssl if v.listener_port_ssl != null }
}
output "datacc_vm_cluster_networks_node_count" {
  description = "Map of node_count values across all datacc_vm_cluster_networks, keyed the same as var.datacc_vm_cluster_networks except keys with no node_count are omitted"
  value       = { for k, v in oci_datacc_vm_cluster_network.datacc_vm_cluster_networks : k => v.node_count if v.node_count != null }
}
output "datacc_vm_cluster_networks_ntp_servers" {
  description = "Map of ntp_servers values across all datacc_vm_cluster_networks, keyed the same as var.datacc_vm_cluster_networks except keys with no ntp_servers are omitted"
  value       = { for k, v in oci_datacc_vm_cluster_network.datacc_vm_cluster_networks : k => v.ntp_servers if v.ntp_servers != null && length(v.ntp_servers) > 0 }
}
output "datacc_vm_cluster_networks_scans" {
  description = "Map of scans values across all datacc_vm_cluster_networks, keyed the same as var.datacc_vm_cluster_networks except keys with no scans are omitted"
  value       = { for k, v in oci_datacc_vm_cluster_network.datacc_vm_cluster_networks : k => v.scans if v.scans != null && length(v.scans) > 0 }
}
output "datacc_vm_cluster_networks_state" {
  description = "Map of state values across all datacc_vm_cluster_networks, keyed the same as var.datacc_vm_cluster_networks except keys with no state are omitted"
  value       = { for k, v in oci_datacc_vm_cluster_network.datacc_vm_cluster_networks : k => v.state if v.state != null && length(v.state) > 0 }
}
output "datacc_vm_cluster_networks_system_tags" {
  description = "Map of system_tags values across all datacc_vm_cluster_networks, keyed the same as var.datacc_vm_cluster_networks except keys with no system_tags are omitted"
  value       = { for k, v in oci_datacc_vm_cluster_network.datacc_vm_cluster_networks : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "datacc_vm_cluster_networks_time_created" {
  description = "Map of time_created values across all datacc_vm_cluster_networks, keyed the same as var.datacc_vm_cluster_networks except keys with no time_created are omitted"
  value       = { for k, v in oci_datacc_vm_cluster_network.datacc_vm_cluster_networks : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "datacc_vm_cluster_networks_time_updated" {
  description = "Map of time_updated values across all datacc_vm_cluster_networks, keyed the same as var.datacc_vm_cluster_networks except keys with no time_updated are omitted"
  value       = { for k, v in oci_datacc_vm_cluster_network.datacc_vm_cluster_networks : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "datacc_vm_cluster_networks_vm_networks" {
  description = "Map of vm_networks values across all datacc_vm_cluster_networks, keyed the same as var.datacc_vm_cluster_networks except keys with no vm_networks are omitted"
  value       = { for k, v in oci_datacc_vm_cluster_network.datacc_vm_cluster_networks : k => v.vm_networks if v.vm_networks != null && length(v.vm_networks) > 0 }
}

