locals {
  config = yamldecode(file("${path.module}/test.yaml"))
}

resource "null_resource" "web_server_info" {
 provisioner "local-exec" {
   command = "echo Web server: ${local.config.servers.web.host}:${local.config.servers.web.port}"
 }
}

resource "null_resource" "api_server_info" {
 provisioner "local-exec" {
   command = "echo API server: ${local.config.servers.api.host}:${local.config.servers.api.port}"
 }
}
