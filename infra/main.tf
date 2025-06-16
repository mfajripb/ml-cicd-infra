provider "aws" {
  region = us-east-1
}

resource "aws_instance" "ml_server" {
  ami                    = var.ami_id
  instance_type          = "t2.medium"
  key_name               = var.key_name

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
