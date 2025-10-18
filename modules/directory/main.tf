resource "null_resource" "create_dir" {
  provisioner "local-exec" {
    command = "mkdir -p ${var.directory_path}"
  }
}
