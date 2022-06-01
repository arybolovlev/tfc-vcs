resource "null_resource" "resolv" {
	triggers = {
		now = timestamp()
	}

	provisioner "local-exec" {
		command = "cat /etc/resolv.conf"
	}
}
