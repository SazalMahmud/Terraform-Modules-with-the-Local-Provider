provider "local" {}

module "project1_dir" {
  source         = "../../modules/directory"
  directory_path = "${path.module}/project1_dir"
}

module "project1_file" {
  source        = "../../modules/file"
  file_path     = "${module.project1_dir.directory_path}/file.txt"
  file_content  = "This is Project 1."
}
