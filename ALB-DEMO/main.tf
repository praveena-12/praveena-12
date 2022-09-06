locals{
  is_access_logs_present = var.access_logs == null ? false : true
  access_logs    = local.is_access_logs_present ? [var.access_logs] : []

  is_subnet_mapping_present = var.subnet_mapping== null ? false : true
  subnet_mapping   = local.is_subnet_mapping_present ? [var.subnet_mapping] : []
}

resource "aws_lb" "test" {
  name = var.name
  name_prefix = var.name_prefix
  internal = var.internal
  load_balancer_type = var.load_balancer_type
  security_groups = var.security_groups
  drop_invalid_header_fields = var.drop_invalid_header_fields
  preserve_host_header = var.preserve_host_header
  subnets = var.subnets
  idle_timeout = var.idle_timeout
  enable_deletion_protection = var.enable_deletion_protection
  enable_cross_zone_load_balancing = var.enable_cross_zone_load_balancing
  enable_http2  = var.enable_http2
  enable_waf_fail_open = var.enable_waf_fail_open
  customer_owned_ipv4_pool = var.customer_owned_ipv4_pool
  ip_address_type = var.ip_address_type
  desync_mitigation_mode = var.desync_mitigation_mode


dynamic "access_logs" {
  for_each =local.access_logs

  content {
     bucket = "customers-input-data"
     prefix = "my-"
     enabled = false
}

  }
 

dynamic "subnet_mapping" {
  for_each =local.subnet_mapping

  content{
      subnet_id = subnet_mapping.value.subnet_id
      allocation_id = lookup(subnet_mapping.value, "allocation_id", null)
      private_ipv4_address = lookup(subnet_mapping.value, "private_ipv4_address", null)
      ipv6_address =  lookup(subnet_mapping.value, "ipv6_address", null)


  }

}


}