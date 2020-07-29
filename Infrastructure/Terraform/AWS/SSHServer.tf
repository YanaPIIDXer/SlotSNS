module "SSHServer" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name = "SlotSNS_SSHServer"
  instance_count = 1
  ami = "ami-07f31579a94d28584"
  instance_type = "t2.micro"
  key_name = var.key_name
  vpc_security_group_ids = [module.SecurityGroup.this_security_group_id]
  subnet_id = module.VPC.public_subnets[0]
}
