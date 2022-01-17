terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "metsi"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
