terraform {
  required_providers {
    aws={
        source="hashicorp/aws"
    }
  }
  
}
provider "aws" {
    region="Tokyo"
    access_key="AKIAQFEIM6BXXG3BNJJP"
    secret_key="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"

}
resource "aws_instance" "test"{
    ami="Ubuntu Server 20.04"
    instance_type="t2.micro"

}
output "instance_public_ip" {
  value=aws
}

