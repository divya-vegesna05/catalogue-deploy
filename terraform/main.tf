module "catalogue" {
  source = "git::https://github.com/divya-vegesna05/terraform-roboshop-app.git?ref=master"
  priority = var.priority
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  iam_instance_profile = var.iam_instance_profile
  tags = var.tags
  app_version = var.app_version
 private_subnet_id =  split(",", data.aws_ssm_parameter.private_subnet_id.value)
  component_security_group_id = data.aws_ssm_parameter.catalogue-security_group_id.value
   app_alb_listener_arn = data.aws_ssm_parameter.load_balancer_arn.value
}