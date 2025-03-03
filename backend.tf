# state.tf
terraform {
  backend "s3" {
    bucket       = "terraform-test-state-lab"
    key          = "test-ec2/terraform.tfstate"
    region       = "us-east-1"
    profile      = "tf-state-handler"
    use_lockfile = true
    encrypt      = true
      }
}

