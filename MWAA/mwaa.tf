
 
resource "aws_mwaa_environment" "praveena-mwaa" {

    airflow_configuration_options = var.airflow_configuration_options
    airflow_version = var.airflow_version
    execution_role_arn = var.execution_role_arn 
    name = var.environment_name
    max_workers = var.max_workers
    min_workers = var.min_workers
    environment_class = var.environment_class
    source_bucket_arn = var.source_bucket_arn
    dag_s3_path = var.dag_s3_path
    plugins_s3_path = var.plugins_s3_path

    plugins_s3_object_version = var.plugins_s3_object_version

    requirements_s3_path = var.requirements_s3_path

    requirements_s3_object_version = var.requirements_s3_object_version

    webserver_access_mode = var.webserver_access_mode

    weekly_maintenance_window_start = var.weekly_maintenance_window_start


    kms_key = var.kms_key_arn


    network_configuration {
    security_group_ids = var.security_group_ids
    subnet_ids         = var.subnet_ids
  }

}
  