provider "aws" {
  region = us-east-1
}

resource "aws_instance" "ml_server" {
  ami                    = ami-09e6f87a47903347c
  instance_type          = "t2.micro"
  key_name               = biliapem

  tags = {
    Name = "ml-server"
  }
}

resource "aws_s3_bucket" "model_storage" {
  bucket = "${var.project_name}-model-store"
}

resource "aws_ecr_repository" "backend_repo" {
  name = "${var.project_name}-backend"
}
