variable bucket_prefix {
  type        = string
  default     = "praveenaa-bucket-2022"
  description = "Creates a unique bucket name beginning with the specified prefix"
}

variable acl {
  type        = string
  default     = "private"
  description = "The canned ACL to apply"
}

variable object_lock_enabled {
  type        = bool
  default     = true
  description = "Indicates whether this bucket has an Object Lock configuration enabled"
}

variable versioning {
  type        = bool
  default     = true
  description = "A configuration of the S3 bucket versioning state."
}

variable tags {
  type        = map
  description = " A map of tags to assign to the bucket."
  default = {
    Environment = "DEV"
  }
}
