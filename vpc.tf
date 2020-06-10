module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "hashicat-database"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1c"]
  private_subnets = ["10.0.10.0/24"]
  public_subnets  = ["0.0.0.0/0"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
