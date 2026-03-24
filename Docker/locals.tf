locals{
    ami_id = data.aws_ami.joindevops.id
    common_tags={
        Project = var.project_name
        Environment = var.environment
        Terraform = "true"
    }
    common_suffix_name = "${var.project_name}-${var.environment}"
}