### What I'm going implement?

![enter image description here](https://i.ibb.co/Dt5R8qt/DnsDb.png)

- Create VPC with 3-Tier Architecture (Web, App and DB) - Leverage code from previous section

- Create AWS Security Group Terraform Module and define `HTTP port 80, 22` inbound rule for entire internet access `0.0.0.0/0`

- Create Multiple EC2 Instances in VPC Private Subnets and install

- Create EC2 Instance in VPC Public Subnet `Bastion Host`

- Create Elastic IP for `Bastion Host` EC2 Instance

- Create `null_resource` with following 3 Terraform Provisioners

- File Provisioner

- `Remote-exec` Provisioner

- `Local-exec` Provisioner

- Listener Indexes: h`ttps_listener_index = 0`

- Target Group Indexes: `target_group_index = 0`

- Create Outputs for EC2 Instance
- App Port 8080 inbound rule added to Private_SG module  `"http-8080-tcp"`

- Create AWS ALB Application Load Balancer Terraform Module

- Create ALB TG for App3 UMS (User Management Web Application) with `Port 8080`

- Create HTTPS Listener Rule for `(/*)`

### Create Lunch Template
- Create Launch Templates using Terraform Resources
- Create Autoscaling Group using Terraform Resources
- Create Autoscaling following features using Terraform Resources
- Autoscaling Notifications
- Autoscaling Scheduled Actions
- Autoscaling Target Tracking Scaling Policies (TTSP)

### Cloudwatch Alarm

- Create the following Alarms using CloudWatch with the end to end usecase built so far
- AWS Application Load Balancer Alarms
- AWS Autoscaling Group Alarms
- AWS CIS Alarms (Center for Internet Security)
- AWS CloudWatch Synthetics
    - Implement a Heart Beat Monitor

### Terraform Modules used

- Define [Launch Template Resource](<https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template>)
- [Terraform Autoscaling Module](https://registry.terraform.io/modules/terraform-aws-modules/autoscaling/aws/latest)

- [terraform-aws-modules/rds/aws](https://registry.terraform.io/modules/terraform-aws-modules/rds/aws/latest)
- [terraform-aws-modules/vpc/aws](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest)
- [terraform-aws-modules/aws](https://registry.terraform.io/modules/terraform-aws-modules/aws/latest)

- [terraform-aws-modules/security-group/aws](https://registry.terraform.io/modules/terraform-aws-modules/security-group/aws/latest)

- [terraform-aws-modules/ec2-instance/aws](https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest)
- [Terraform AWS CloudWatch Module](https://registry.terraform.io/modules/terraform-aws-modules/cloudwatch/aws/latest)
- [AWS CIS Alarms](https://registry.terraform.io/modules/terraform-aws-modules/cloudwatch/aws/latest/submodules/cis-alarms)
- [CIS AWS Foundations Benchmark controls](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-cis-controls.html)


- [aws_eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip)

- [null_resource](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource)

- [file provisioner](https://www.terraform.io/docs/language/resources/provisioners/file.html)

- [remote-exec provisioner](https://www.terraform.io/docs/language/resources/provisioners/remote-exec.html)

- [local-exec provisioner](https://www.terraform.io/docs/language/resources/provisioners/local-exec.html)

- [depends_on Meta-Argument](https://www.terraform.io/docs/language/meta-arguments/depends_on.html)

### [](https://github.com/OlaJamesO/terraform-on-aws-ec2/tree/main/07-AWS-EC2Instance-and-SecurityGroups#terraform-new-concepts-we-will-introduce)Some Terraform concepts I explored
