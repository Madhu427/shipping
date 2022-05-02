module "shipping-ami" {
  source = "git::https://github.com/Madhu427/terraform-ami.git"
  COMPONENT = "shipping"
  APP_VERSION = var.APP_VERSION
}

variable "APP_VERSION" {}

provider "aws" {
  region = "us-east-1"
}


terraform {

  backend "s3" {
    bucket = "tf-bucket-61"
    key    = "ami/shipping/terraform.tfstate"
    region = "us-east-1"
  }
}

//

