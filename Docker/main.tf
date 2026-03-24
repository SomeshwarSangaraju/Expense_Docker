resource "aws_instance" "expense" {
  ami           = local.ami_id
  instance_type = "t3.micro"

#  vpc_security_group_ids = [aws_security_group.docker]

  # security_groups = aws_security_group.docker

  iam_instance_profile = aws_iam_instance_profile.docker.name

   root_block_device {
        volume_size = 50
        volume_type = "gp3" # or "gp2", depending on your preference
    }

  user_data = file("bootstrap.sh")
  tags =merge(
    local.common_tags,
    {
        Name = "${local.common_suffix_name}-expense"
    }
  )
}

resource "aws_iam_instance_profile" "docker" {
  name = "expenseDocker"
  role = "BastionTerraformAdmin"
}

# resource "aws_security_group" "docker" {

#   name        = "${local.common_suffix_name}-allow-all"
#   description = "Allow SSH access"

#   ingress {
#     from_port        = 22
#     to_port          = 22
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#   }
#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#   }
# }