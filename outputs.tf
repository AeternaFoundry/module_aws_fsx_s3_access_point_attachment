output "fsx_s3_access_point_attachments_name" {
  description = "Map of name values across all fsx_s3_access_point_attachments, keyed the same as var.fsx_s3_access_point_attachments"
  value       = { for k, v in aws_fsx_s3_access_point_attachment.fsx_s3_access_point_attachments : k => v.name if v.name != null && length(v.name) > 0 }
}
output "fsx_s3_access_point_attachments_openzfs_configuration" {
  description = "Map of openzfs_configuration values across all fsx_s3_access_point_attachments, keyed the same as var.fsx_s3_access_point_attachments"
  value       = { for k, v in aws_fsx_s3_access_point_attachment.fsx_s3_access_point_attachments : k => v.openzfs_configuration if v.openzfs_configuration != null && length(v.openzfs_configuration) > 0 }
}
output "fsx_s3_access_point_attachments_region" {
  description = "Map of region values across all fsx_s3_access_point_attachments, keyed the same as var.fsx_s3_access_point_attachments"
  value       = { for k, v in aws_fsx_s3_access_point_attachment.fsx_s3_access_point_attachments : k => v.region if v.region != null && length(v.region) > 0 }
}
output "fsx_s3_access_point_attachments_s3_access_point" {
  description = "Map of s3_access_point values across all fsx_s3_access_point_attachments, keyed the same as var.fsx_s3_access_point_attachments"
  value       = { for k, v in aws_fsx_s3_access_point_attachment.fsx_s3_access_point_attachments : k => v.s3_access_point if v.s3_access_point != null && length(v.s3_access_point) > 0 }
}
output "fsx_s3_access_point_attachments_s3_access_point_alias" {
  description = "Map of s3_access_point_alias values across all fsx_s3_access_point_attachments, keyed the same as var.fsx_s3_access_point_attachments"
  value       = { for k, v in aws_fsx_s3_access_point_attachment.fsx_s3_access_point_attachments : k => v.s3_access_point_alias if v.s3_access_point_alias != null && length(v.s3_access_point_alias) > 0 }
}
output "fsx_s3_access_point_attachments_s3_access_point_arn" {
  description = "Map of s3_access_point_arn values across all fsx_s3_access_point_attachments, keyed the same as var.fsx_s3_access_point_attachments"
  value       = { for k, v in aws_fsx_s3_access_point_attachment.fsx_s3_access_point_attachments : k => v.s3_access_point_arn if v.s3_access_point_arn != null && length(v.s3_access_point_arn) > 0 }
}
output "fsx_s3_access_point_attachments_type" {
  description = "Map of type values across all fsx_s3_access_point_attachments, keyed the same as var.fsx_s3_access_point_attachments"
  value       = { for k, v in aws_fsx_s3_access_point_attachment.fsx_s3_access_point_attachments : k => v.type if v.type != null && length(v.type) > 0 }
}

