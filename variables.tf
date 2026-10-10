variable "fsx_s3_access_point_attachments" {
  description = <<EOT
Map of fsx_s3_access_point_attachments, attributes below
Required:
    - name
    - type
Optional:
    - region
    - openzfs_configuration (block):
        - file_system_identity (optional, block):
            - posix_user (optional, block):
                - gid (required)
                - secondary_gids (optional)
                - uid (required)
            - type (required)
        - volume_id (required)
    - s3_access_point (block):
        - policy (optional)
        - vpc_configuration (optional, block):
            - vpc_id (optional)
EOT

  type = map(object({
    name   = string
    type   = string
    region = optional(string)
    openzfs_configuration = optional(list(object({
      file_system_identity = optional(list(object({
        posix_user = optional(list(object({
          gid            = number
          secondary_gids = optional(list(number))
          uid            = number
        })))
        type = string
      })))
      volume_id = string
    })))
    s3_access_point = optional(list(object({
      policy = optional(string)
      vpc_configuration = optional(list(object({
        vpc_id = optional(string)
      })))
    })))
  }))
}

