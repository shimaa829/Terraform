 module "module1" {
  source="./mymodule"
  cidr= "${var.main_cidr}"
  tag = "${var.main_tag}"

}

