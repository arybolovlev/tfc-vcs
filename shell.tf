resource "null_resource" "dns" {
	triggers = {
		now = timestamp()
	}

	provisioner "local-exec" {
		command = "sudo echo 'nameserver 1.1.1.1' > /etc/resolv.conf"
	}
}

resource "null_resource" "resolv" {
	triggers = {
		now = timestamp()
	}

	provisioner "local-exec" {
		command = "cat /etc/resolv.conf"
	}
}
