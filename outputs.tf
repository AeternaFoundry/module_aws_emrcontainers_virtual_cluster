output "emrcontainers_virtual_clusters_id" {
  description = "Map of id values across all emrcontainers_virtual_clusters, keyed the same as var.emrcontainers_virtual_clusters"
  value       = { for k, v in aws_emrcontainers_virtual_cluster.emrcontainers_virtual_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "emrcontainers_virtual_clusters_arn" {
  description = "Map of arn values across all emrcontainers_virtual_clusters, keyed the same as var.emrcontainers_virtual_clusters"
  value       = { for k, v in aws_emrcontainers_virtual_cluster.emrcontainers_virtual_clusters : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "emrcontainers_virtual_clusters_container_provider" {
  description = "Map of container_provider values across all emrcontainers_virtual_clusters, keyed the same as var.emrcontainers_virtual_clusters"
  value       = { for k, v in aws_emrcontainers_virtual_cluster.emrcontainers_virtual_clusters : k => one(v.container_provider) if v.container_provider != null && length(v.container_provider) > 0 }
}
output "emrcontainers_virtual_clusters_name" {
  description = "Map of name values across all emrcontainers_virtual_clusters, keyed the same as var.emrcontainers_virtual_clusters"
  value       = { for k, v in aws_emrcontainers_virtual_cluster.emrcontainers_virtual_clusters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "emrcontainers_virtual_clusters_region" {
  description = "Map of region values across all emrcontainers_virtual_clusters, keyed the same as var.emrcontainers_virtual_clusters"
  value       = { for k, v in aws_emrcontainers_virtual_cluster.emrcontainers_virtual_clusters : k => v.region if v.region != null && length(v.region) > 0 }
}
output "emrcontainers_virtual_clusters_tags" {
  description = "Map of tags values across all emrcontainers_virtual_clusters, keyed the same as var.emrcontainers_virtual_clusters"
  value       = { for k, v in aws_emrcontainers_virtual_cluster.emrcontainers_virtual_clusters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "emrcontainers_virtual_clusters_tags_all" {
  description = "Map of tags_all values across all emrcontainers_virtual_clusters, keyed the same as var.emrcontainers_virtual_clusters"
  value       = { for k, v in aws_emrcontainers_virtual_cluster.emrcontainers_virtual_clusters : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

