output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "asg_name" {
  description = "Name of the Auto Scaling Group"
  value       = aws_autoscaling_group.asg.name
}

output "launch_template_id" {
  description = "ID of the Launch Template"
  value       = aws_launch_template.spot_lt.id
}
