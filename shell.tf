resource "null_resource" "aws" {
	triggers = {
		now = timestamp()
	}

	provisioner "local-exec" {
		command = "aws --version"
	}
}

output "shell" {
  value = null_resource.aws
}
