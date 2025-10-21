variable "ami_id" {
  type = string
  default = "ami-09c813fb71547fc4f"
  description = "this is ami id used for creating EC2 instances "
}

variable "instance_type" {
  type = string
  description = "Instance type used for creating EC2 instance"
  validation {
    condition     = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
    error_message = "Please select either t3 micro or small or medium"
  }
}


variable "sg_ids" {
  type = list

}

#optional
variable "tags" {
  type = map
  default = {}
}