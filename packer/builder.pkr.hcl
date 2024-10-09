# packer {
#   required_plugins {
#     your_plugin_name = {
#       version = ">= 1.0.0"
#       source  = "github.com/harshicorp/amazon"
#     }
#   }
# }

build {

  name = "linux-builder"
  source "source.amazon-ebs.vm" {
    ssh_username = "ec2-user"
  }
  provisioner "ansible" {
    playbook_file = "../ansible/application.yml"
  }
}