resource "aws_instance" "ec2-1" {
    ami = "ami-0bb4c991fa89d4b9b"
    vpc_security_group_ids = [aws_security_group.ec2.id]
    instance_type = "t2.small"
    root_block_device {
      volume_size = 25
    }
    #key_name = "ec2-demo"
    subnet_id = aws_subnet.private_subnet1.id
    user_data = file("userdata.sh")
    tags={
        Name = "Terraform instance"
        env = "Dev"
    }

}

resource "aws_instance" "ec2-2" {
    ami = "ami-0bb4c991fa89d4b9b"
    vpc_security_group_ids = [aws_security_group.ec2.id]
    instance_type = "t2.small"
    root_block_device {
      volume_size = 25
    }
    #key_name = "ec2-demo"
    subnet_id = aws_subnet.private_subnet2.id
    user_data = file("userdata.sh")
    
    tags={
        Name = "Terraform instance"
        env = "Dev"
    }

}