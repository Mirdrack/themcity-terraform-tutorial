output "server-ip" {
  value = "${aws_instance.my-test-instance.public_ip}"
}
