terraform {
required_providers {}
}


resource "null_resource" "kind_cluster" {
provisioner "local-exec" {
command = "kind create cluster --name tf-kind"
}
}
