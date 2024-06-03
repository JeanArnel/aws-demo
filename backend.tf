terraform{
  required_providers {
    aws={
      source = "hashicorp/aws"
    }
  }
    cloud {
        organization = "JeanArnel"
      workspaces {
        name = "aws-demo"
      }
    }

}
