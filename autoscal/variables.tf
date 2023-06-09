
variable "region" {
  type        = string
  default     = "us-west-2"
  description = "This is the location where our resources to be created"
}
variable "launch_configuration_name" {
  description = "The name of the launch configuration. If you leave this blank, Terraform will auto-generate a unique name. Conflicts with name_prefix."
  type        = string
  default     = "Launch-Lamp-application"
}
variable "image_id" {
  description = "The EC2 image ID to launch, it should be having the pre installed software to be run our application"
  type        = string
  default     = "ami-000a7cc8c26ff6ac6"
}
variable "instance_type" {
  description = "The size of instance to launch."
  type        = string
  default     = "t2.micro"
}
variable "key_name" {
  description = "This key will help us to connect the instance"
  type        = string
  default     = "first-key"

}
variable "loadbalancer_name" {
  description = "The name of the LB. This name must be unique within your AWS account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen. If not specified, Terraform will autogenerate a name beginning with tf-lb"
  type        = string
  default     = "Application-Lb"
}
variable "loadbalancer_type" {
  description = "The type of load balancer to create. Possible values are application, gateway, or network. The default value is application"
  type        = string
  default     = "application"
}
variable "security_group_ids" {
  description = ") A list of security group IDs to assign to the LB. Only valid for Load Balancers of type application."
  type        = list(any)
  default     = ["sg-01d065bd0373e6012"]
}
variable "subnet_ids" {
  description = "A list of subnet IDs to attach to the LB. Subnets cannot be updated for Load Balancers of type network. Changing this value for load balancers of type network will force a recreation of the resource."
  type        = list(any)
  default     = ["subnet-0a572db22012da303", "subnet-025c8d7bd2f450c98", "subnet-00943c21ef6387613"]

}
variable "target_group_name" {
  description = "Name of the target group. If omitted, Terraform will assign a random, unique name. This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen."
  type        = string
  default     = "ALB-target-Group"
}
variable "target_type" {
  description = "Type of target that you must specify when registering targets with this target group. See doc for supported values. The default is instance."
  type        = string
  default     = "instance"
}
variable "vpc_id" {
  description = " Identifier of the VPC in which to create the target group. Required when target_type is instance, ip or alb. Does not apply when target_type is lambda."
  type        = string
  default     = "vpc-0e0e4bf4ae00db3f7"
}
variable "protocol_type" {
  description = "value"
  type        = string
  default     = "HTTP"
}
variable "path" {
  description = "value"
  type        = string
  default     = "/info.php"

}
variable "asg_name" {
  description = "Name of the Auto Scaling Group. By default generated by Terraform. Conflicts with name_prefix"
  type        = string
  default     = "Lamp-Autoscale-Gp"
}
variable "asp-up" {
  description = "value"
  type        = string
  default     = "autoscalegroup_policy_up"
}
variable "asp-down" {
  description = "value"
  type        = string
  default     = "autoscalegroup_policy_down"
}
variable "policy_type" {
  description = "value"
  type        = string
  default     = "SimpleScaling"
}
variable "cooldown" {
  description = "value"
  type        = string
  default     = 60
}
variable "adjustment_type" {
  description = "value"
  type        = string
  default     = "ChangeInCapacity"
}
variable "alarm_up_name" {
  description = "value"
  type        = string
  default     = "web_cpu_alarm_up"
}
variable "alarm_down_name" {
  description = "value"
  type        = string
  default     = "web_cpu_alarm_down"
}
variable "period" {
  description = "value"
  type        = string
  default     = 120

}
variable "metric_name" {
  description = "Defining the metric_name according to which scaling will happen (based on CPU) "
  type        = string
  default     = "CPUUtilization"
}
variable "namespace" {
  description = "The namespace for the alarm's associated metric"
  type        = string
  default     = "AWS/EC2"
}
variable "statistic" {
  description = "value"
  type        = string
  default     = "Average"
}
variable "comparison_operator_up" {
  description = "value"
  type        = string
  default     = "GreaterThanOrEqualToThreshold"
}
variable "comparison_operator_down" {
  description = "value"
  type        = string
  default     = "LessThanOrEqualToThreshold"

}
###################################
#Tags
###################################
variable "project" {
  description = "Name of the Project"
  type        = string
  default     = "DemoProject"
}
variable "createdby" {
  description = "Which is used for adding the tags"
  type        = string
  default     = "Terraform"
}
