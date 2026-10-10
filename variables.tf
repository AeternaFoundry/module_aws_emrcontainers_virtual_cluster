variable "emrcontainers_virtual_clusters" {
  description = <<EOT
Map of emrcontainers_virtual_clusters, attributes below
Required:
    - name
    - container_provider (block):
        - id (required)
        - info (required, block):
            - eks_info (required, block):
                - namespace (optional)
        - type (required)
Optional:
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    name     = string
    region   = optional(string)
    tags     = optional(map(string))
    tags_all = optional(map(string))
    container_provider = object({
      id = string
      info = object({
        eks_info = object({
          namespace = optional(string)
        })
      })
      type = string
    })
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

