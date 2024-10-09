packer {
  required_plugins {
    amazon-ebs = {
      source  = "github.com/abbysac"
      version = ">= 1.0.0"
    }
  }
}
source "amazon-ebs" "vm" {
  region                      = "${var.region}"
  subnet_id                   = "${var.subnet_id}"
  security_group_id           = "${var.security_group_id}"
  ami_name                    = "${var.ami_name}"
  source_ami                  = "${var.base_ami}"
  instance_type               = "${var.instance_type}"
  associate_public_ip_address = true
}