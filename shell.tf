resource "null_resource" "aws" {
	triggers = {
		now = timestamp()
	}

	provisioner "local-exec" {
		command = "cat /etc/resolv.conf"
	}
}
