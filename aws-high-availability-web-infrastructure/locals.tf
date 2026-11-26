locals {
  name_prefix = "${var.project_name}-${var.environment}"

  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }

  availability_zones = [
    "eu-central-1a",
    "eu-central-1b"
  ]
}
