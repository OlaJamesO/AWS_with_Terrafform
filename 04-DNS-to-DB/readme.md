### What I'm going implement?

![enter image description here](https://i.ibb.co/Dt5R8qt/DnsDb.png)

- Create VPC with 3-Tier Architecture (Web, App and DB) - Leverage code from previous section

- Create AWS Security Group Terraform Module and define HTTP port 80, 22 inbound rule for entire internet access `0.0.0.0/0`

- Create Multiple EC2 Instances in VPC Private Subnets and install

- Create EC2 Instance in VPC Public Subnet `Bastion Host`

- Create Elastic IP for `Bastion Host` EC2 Instance

- Create `null_resource` with following 3 Terraform Provisioners

- File Provisioner

- Remote-exec Provisioner

- Local-exec Provisioner

- Created and Implement an Application Load Balancer Context Path based Routing in AWS using Terraform.

- Listener Indexes: https_listener_index = 0

- Target Group Indexes: target_group_index = 0

- Create RDS DB Security Group
- Create RDS DB Variables with  `sensitive`  argument for DB password
- Create RDS DB Module
- Create RDS DB Outputs
- Create EC2 Instance Module for new App3
- Create  `tmpl`  file for userdata (Use Terraform templatefle function)
- Create Outputs for EC2 Instance
- App Port 8080 inbound rule added to Private_SG module  `"http-8080-tcp"`

- Create ALB TG for App3 UMS (User Management Web Application) with Port 8080
- Enable Stickiness for App3 UMS TG
- Create HTTPS Listener Rule for (/*)
- Listener Rule Priorities  `priority = 1`
  - app1 -  `priority = 1`
  - app2 -  `priority = 2`
  - Root Context "/*" -  `priority = 3`

- Using jumpbox userdata, mysql client should be auto-installed.
- Connect to Jumpbox to test if default db and tables created.
- Connect via Jumpbox to DB to verify webappdb, Tables and Content inside

- Give  `dns-to-db`  DNS name for Route53 record

### Terraform Modules used

- [terraform-aws-modules/rds/aws](https://registry.terraform.io/modules/terraform-aws-modules/rds/aws/latest)
- [terraform-aws-modules/vpc/aws](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest)
  - - [terraform-aws-modules/aws](https://registry.terraform.io/modules/terraform-aws-modules/aws/latest)

- [terraform-aws-modules/security-group/aws](https://registry.terraform.io/modules/terraform-aws-modules/security-group/aws/latest)

- [terraform-aws-modules/ec2-instance/aws](https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest)

### [](https://github.com/OlaJamesO/terraform-on-aws-ec2/tree/main/07-AWS-EC2Instance-and-SecurityGroups#terraform-new-concepts-we-will-introduce)Some Terraform concepts I explored

- [aws_eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip)

- [null_resource](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource)

- [file provisioner](https://www.terraform.io/docs/language/resources/provisioners/file.html)

- [remote-exec provisioner](https://www.terraform.io/docs/language/resources/provisioners/remote-exec.html)

- [local-exec provisioner](https://www.terraform.io/docs/language/resources/provisioners/local-exec.html)

- [depends_on Meta-Argument](https://www.terraform.io/docs/language/meta-arguments/depends_on.html)

### Application Load Balancer

- Create AWS ALB Application Load Balancer Terraform Module
