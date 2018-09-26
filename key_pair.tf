resource "aws_key_pair" "my-test-key" {
  key_name   = "test-key"
  public_key = "${file("/root/.ssh/id_rsa.pub")}"
}