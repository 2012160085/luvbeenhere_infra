resource "aws_instance" "bastion" {
    ami = "ami-0ba5cd124d7a79612"         //ubuntu 18.04 lts 
    availability_zone = "ap-northeast-2a"
    instance_type = "t2.micro"            
    key_name = aws_key_pair.lbh_key.key_name
    subnet_id = aws_subnet.public.id
    security_groups = [
      aws_security_group.allow_all.id,
    ]
    tags = {
      Name = "dev-ec2"
    }
}
