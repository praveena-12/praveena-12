
variable name {
  type        = string
  default     = "test-alb"
  description = "The name of the LB"
}

variable name_prefix {
  type        = string
  default     = null
  description = "Creates a unique name beginning with the specified prefix."
}

variable internal {
  type        = bool
  default     = true
  description = " If true, the LB will be internal"
}

variable load_balancer_type  {
  type        = string
  default     = "application"
  description = "The type of load balancer to create."
}

variable security_groups   {
  type        = list(string)
  default     = ["sg-45746e18"]
  description = " A list of security group IDs to assign to the LB."
}

variable drop_invalid_header_fields  {
  type        = bool
  default     = false
  description = "Indicates whether HTTP headers with header fields that are not valid are removed by the load balancer (true) or routed to targets (false)."
}

variable preserve_host_header  {
  type        = bool
  default     = false
  description = " Indicates whether the Application Load Balancer should preserve the Host header in the HTTP request and send it to the target without any change."
}

variable subnets {
  type        = list(string)
  default     = ["subnet-9bbe4bd6","subnet-13127b2d"]
  description = " A list of subnet IDs to attach to the LB."
}

variable idle_timeout {
  type        = number
  default     = 60
  description = "The time in seconds that the connection is allowed to be idle."
}

variable enable_deletion_protection  {
  type        = bool
  default     = false
  description = " If true, deletion of the load balancer will be disabled via the AWS API"
}

variable enable_cross_zone_load_balancing  {
  type        = bool
  default     = false
  description = "If true, cross-zone load balancing of the load balancer will be enabled."
}

variable enable_http2  {
  type        = bool
  default     = true
  description = "Indicates whether HTTP/2 is enabled in application load balancers. D"
}

variable enable_waf_fail_open {
  type        = bool
  default     = false
  description = "Indicates whether to allow a WAF-enabled load balancer to route requests to targets if it is unable to forward the request to AWS WAF. "
}

variable customer_owned_ipv4_pool {
  type        = number
  default     = null
  description = "The ID of the customer owned ipv4 pool to use for this load balancer."
}

variable ip_address_type  {
  type        = string
  default     = "ipv4"
  description = "The type of IP addresses used by the subnets for your load balancer."
}

variable desync_mitigation_mode  {
  type        = string
  default     = "defensive"
  description = "Determines how the load balancer handles requests that might pose a security risk to an application due to HTTP desync."
}

variable access_logs {
  type        = object({})
  default     = null
}

variable subnet_mapping {
  type        = object({})
  default     = null
}












