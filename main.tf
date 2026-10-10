resource "aws_emrcontainers_virtual_cluster" "emrcontainers_virtual_clusters" {
  for_each = var.emrcontainers_virtual_clusters

  name     = each.value.name
  region   = each.value.region
  tags     = each.value.tags
  tags_all = each.value.tags_all

  container_provider {
    id = each.value.container_provider.id
    info {
      eks_info {
        namespace = each.value.container_provider.info.eks_info.namespace
      }
    }
    type = each.value.container_provider.type
  }
}

