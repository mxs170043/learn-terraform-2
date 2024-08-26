provider "aws" {
  region = var.region
}
provider "google" {
  credentials = data.local_file.google-credentials.content
  project     = "terraform-demo"
  region      = "us-central1"
}
resource "aws_instance" "ubuntu" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
