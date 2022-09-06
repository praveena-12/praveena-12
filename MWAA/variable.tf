variable airflow_configuration_options {
  type        = map(string)
  default     = null
  description = "The airflow_configuration_options parameter specifies airflow override options."
}
variable airflow_version {
  type        = string
  default     = "2.0.2"
  description = "Airflow version of your environment, will be set by default to the latest version that MWAA supports"
}
variable  execution_role_arn {
  type        = string
  default     = "arn:aws:iam::233425133219:role/service-role/AmazonMWAA-praveena-airflow-demo-environment-Cn3moy"
  description = "The Amazon Resource Name (ARN) of the task execution role that the Amazon MWAA and its environment can assume"
}

variable environment_name {
  type        = string
  description = "name of the environment"
}
variable max_workers {
  type        = number
  default     = 2
  description = "The maximum number of workers that can be automatically scaled up. "
}
variable min_workers {
  type        = number
  default     = 1
  description = "The minimum number of workers that you want to run in your environment. "
}
variable environment_class {
  type        = string
  default     = "mw1.small"
  description = "Environment class for the cluster. Possible options are mw1.small, mw1.medium, mw1.large"
}
variable source_bucket_arn {
  type        = string
  default     = "arn:aws:s3:::akshai-s3-test-bucket"
  description = " The Amazon Resource Name (ARN) of your Amazon S3 storage bucket. "
}
variable dag_s3_path {
  type        = string
  default     = "/dag"
  description = " The relative path to the DAG folder on your Amazon S3 storage bucket"
}
variable plugins_s3_path {
  type        = string
  default     = null
  description = " The relative path to the plugins.zip file on your Amazon S3 storage bucket. "
}
variable plugins_s3_object_version {
  type        = string
  default     = null
  description = "The plugins.zip file version you want to use."
}
variable requirements_s3_path {
  type        = string
  default     = null
  description = "The relative path to the requirements.txt file on your Amazon S3 storage bucket"
}
variable requirements_s3_object_version {
  type        = string
  default     = null
  description = "The requirements.txt file version you want to use."
}
variable webserver_access_mode {
  type        = string
  default     = "PUBLIC_ONLY"
  description = " Specifies whether the webserver should be accessible over the internet or via your specified VPC."
}
variable weekly_maintenance_window_start{
  type        = string
  default     = null
  description = "Specifies the start date for the weekly maintenance window."
}
variable kms_key_arn {
  type        = string
  default     = null
  description = "description"
}
variable security_group_ids {
  type        = list(string)
  default     = ["sg-0ed91d75d2314d07b"]
  description = "Security groups IDs for the environment. "
}
variable subnet_ids {
  type        = list(string)
  default     = ["subnet-027142c763faaa369","subnet-054d7c4601b23c376"]
  description = "The private subnet IDs in which the environment should be created"
}
==============================================================











