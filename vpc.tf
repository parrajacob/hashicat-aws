module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  cidr_block           = var.address_space
  enable_dns_hostnames = true

  tags = {
    name = "database-vpc"
    Terraform = "true"
    Environment = "dev"
  }
}
