provider "local" {}

module "project2_dir" {
  source         = "../../modules/directory"
  directory_path = "${path.module}/project2_dir"
}

module "project2_file" {
  source        = "../../modules/file"
  file_path     = "${module.project2_dir.directory_path}/file.txt"
  file_content  = "This is Project 2."
}
