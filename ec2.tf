resource "aws_instance" "this" {
    ami = var.ami_id #madatory
    instance_type = var.instance_type #madatory
    vpc_security_group_ids = var.sg_ids #madatory
    tags = var.tags #optionals
}

