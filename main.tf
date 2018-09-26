resource "aws_instance" "my-test-instance" {
  ami             = "${data.aws_ami.ubuntu.id}"
  
  instance_type   = "t2.micro"

  key_name        = "${aws_key_pair.my-test-key.key_name}"

  security_groups = [
    "${aws_security_group.test-instance-sg.name}"
  ]

  tags {
    Name = "test-instance"
    Project = "terraform-tutorial"
  }
}
