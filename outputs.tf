output "eips_lookup_id" {
  description = "Map of id values across all eips_lookup, keyed the same as var.eips_lookup"
  value       = { for k, v in data.aws_eips.eips_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "eips_lookup_allocation_ids" {
  description = "Map of allocation_ids values across all eips_lookup, keyed the same as var.eips_lookup"
  value       = { for k, v in data.aws_eips.eips_lookup : k => v.allocation_ids if v.allocation_ids != null && length(v.allocation_ids) > 0 }
}
output "eips_lookup_filter" {
  description = "Map of filter values across all eips_lookup, keyed the same as var.eips_lookup"
  value       = { for k, v in data.aws_eips.eips_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "eips_lookup_public_ips" {
  description = "Map of public_ips values across all eips_lookup, keyed the same as var.eips_lookup"
  value       = { for k, v in data.aws_eips.eips_lookup : k => v.public_ips if v.public_ips != null && length(v.public_ips) > 0 }
}
output "eips_lookup_region" {
  description = "Map of region values across all eips_lookup, keyed the same as var.eips_lookup"
  value       = { for k, v in data.aws_eips.eips_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "eips_lookup_tags" {
  description = "Map of tags values across all eips_lookup, keyed the same as var.eips_lookup"
  value       = { for k, v in data.aws_eips.eips_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

