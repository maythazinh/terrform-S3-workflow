# state.tf
terraform {
  backend "s3" {
    bucket       = "terraform-test-state-lab"
    key          = "test-ec2/terraform.tfstate"
    region       = "us-east-1"
    profile      = "tf-state-handler"
    use_lockfile = true
    encrypt      = true
    # access_key = data.vault_generic_secret.aws_creds.data["aws_access_key_id"]
    # secret_key = data.vault_generic_secret.aws_creds.data["aws_secret_access_key"]
  }
}

