resource "aws_instance" "modeloteste" {
    ami = "ami-0022f774911c1d690"
    instance_type = "t2.micro"
    key_name = "quode_labaws"
    vpc_security_group_ids = [aws_security_group.allow_services.id]
    tags = {
    Name    = "terraform-ec2"
  }
    user_data = "${file("bootstrap.sh")}"
}