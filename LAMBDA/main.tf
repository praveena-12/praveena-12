locals{
  is_dead_letter_config_present = var.dead_letter_config == null ? false : true
  dead_letter_config    = local.is_dead_letter_config_present ? [var.dead_letter_config] : []

  is_environment_present = var.environment== null ? false : true
  environment  = local.is_environment_present ? [var.environment] : []

  is_ephemeral_storage_present = var.ephemeral_storage== null ? false : true
  ephemeral_storage = local.is_ephemeral_storage_present ? [var.ephemeral_storage] : []

  is_file_system_config_present = var.file_system_config== null ? false : true
  file_system_config = local.is_file_system_config_present ? [var.file_system_config] : []

  is_image_config_present = var.image_config== null ? false : true
  image_config = local.is_image_config_present ? [var.image_config] : []

  is_tracing_config_present = var.tracing_config== null ? false : true
  tracing_config = local.is_tracing_config_present ? [var.tracing_config] : []

  is_vpc_config_present = var.vpc_config== null ? false : true
  vpc_config = local.is_vpc_config_present ? [var.vpc_config] : []

}

resource "aws_lambda_function" "test_lambda" {
    function_name = var.function_name
    role = var.role  
    architectures = var.architectures
    code_signing_config_arn = var.code_signing_config_arn
    description = var.description
    filename = var.filename
    handler = var.handler
    kms_key_arn = var.kms_key_arn
    layers = var.layers
    memory_size = var.memory_size
    package_type = var.package_type
    publish = var.publish
    reserved_concurrent_executions = var.reserved_concurrent_executions
    runtime = var.runtime
    s3_bucket = var.s3_bucket
    s3_key = var.s3_key  //path+ s3 object
    s3_object_version = var.s3_object_version
    source_code_hash = var.source_code_hash
    timeout = var.timeout


    dynamic "dead_letter_config" {
      for_each=local.dead_letter_config

      content {
        target_arn = lookup(dead_letter_config.value, "target_arn", null)
      }
    }
    dynamic "environment" {
      for_each= local.environment

      content {
        variables = lookup(environment.value, "variables", null)
      }
    }
    dynamic "ephemeral_storage" {
      for_each = local.ephemeral_storage

      content {
        size = 512
      }
    }
    dynamic "file_system_config" {
      for_each = local.file_system_config

      content {
        arn = file_system_config.value.arn
        local_mount_path =file_system_config.value.local_mount_path
      }
    }
    dynamic "image_config" {
      for_each =local.image_config

      content {
        command = lookup(image_config.value,"command",null)
        entry_point= lookup(image_config.value,"entry_point", null)
        working_directory= lookup(image_config.value, "working_directory", null)
      }
    }
    dynamic "tracing_config" {
      for_each= local.tracing_config

      content {
        mode = tracing_config.value.mode
      }
    }

    dynamic "vpc_config" {
      for_each= local.vpc_config

      content {
        security_group_ids =vpc_config.value.security_group_ids
        subnet_ids = vpc_config.value.subnet_ids
      }
    }
}





