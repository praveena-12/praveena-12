variable  function_name  {
  type        = string
  default     = "praveena-lambda-function"
  description = "Unique name for your Lambda Function"
}

variable role {
  type        = string
  default     = "arn:aws:iam::233425133219:role/praveena-lambda-test-role"
  description = "Amazon Resource Name (ARN) of the function's execution role. "
}

variable architectures {
  type        = list(string)
  default     = ["x86_64"]
  description = "Instruction set architecture for your Lambda function. "
}

variable code_signing_config_arn {
  type        = string
  default     = null
  description = "Instruction set architecture for your Lambda function. "
}

variable description  {
  type        = string
  default     = null
  description = "Description of what your Lambda Function does."
}

variable filename {
  type        = string
  default     = null
  description = "Path to the function's deployment package within the local filesystem."
}

variable handler  {
  type        = string
  default     = "index.js"
  description = "Function entrypoint in your code"
}

variable image_uri  {
  type        = string
  default     = null
  description = "ECR image URI containing the function's deployment package."
}

variable kms_key_arn  {
  type        = string
  default     = null
  description = " Amazon Resource Name (ARN) of the AWS Key Management Service (KMS) key that is used to encrypt environment variables. "
}

variable layers {
  type        = list (string)
  default     = null
  description = "List of Lambda Layer Version ARNs (maximum of 5) to attach to  Lambda Function. "
}

variable memory_size {
  type        = number
  default     = 128
  description = "Amount of memory in MB your Lambda Function can use at runtime. "
}

variable package_type  {
  type        = string
  default     = "Zip"
  description = " Lambda deployment package type"
}

variable publish {
  type        = bool
  default     = false
  description = " Whether to publish creation/change as new Lambda Function Version"
}

variable reserved_concurrent_executions  {
  type        = number
  default     = "-1"
  description = "description"
}

variable runtime {
  type        = string
  default     = "nodejs16.x"
  description = " Identifier of the function's runtime. "
}

variable s3_bucket {
  type        = string
  default     = "akshai-s3-test-bucket"
  description = "S3 bucket location containing the function's deployment package."
}

variable s3_key {
  type        = string
  default     = "example/index.zip"
  description = "S3 key of an object containing the function's deployment package."
}

variable s3_object_version {
  type        = string
  default     = null
  description = "Object version containing the function's deployment package"
}

variable source_code_hash {
  type        = string
  default     = null
  description = "Used to trigger updates"
}


variable timeout  {
  type        = string
  default     = 3
  description = "Amount of time your Lambda Function has to run in seconds."
}

variable tracing_config  {
  type        = list(string)
  default     = null
}

variable vpc_config  {
  type        = list(string)
  default     = null
}

variable dead_letter_config {
  type        = object({})
  default     = null
}

variable environment {
  type        = object({})
  default     = null
}

variable ephemeral_storage {
  type        = number
  default     = 512 
}

variable file_system_config {
  type        = object({})
  default     = null
}

variable image_config {
  type        = object({})
  default     = null
}





















