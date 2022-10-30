### What I'm going implement?

- Create VPC with 3-Tier Architecture (Web, App and DB) - Leverage code from previous section
- Create AWS Security Group Terraform Module and define HTTP port 80, 22 inbound rule for entire internet access  `0.0.0.0/0`
- Create Multiple EC2 Instances in VPC Private Subnets and install
- Create EC2 Instance in VPC Public Subnet  `Bastion Host`
- Create Elastic IP for  `Bastion Host`  EC2 Instance
- Create  `null_resource`  with following 3 Terraform Provisioners
  - File Provisioner
  - Remote-exec Provisioner
  - Local-exec Provisioner
  - Created and Implement an Application Load Balancer Context Host Header based Routing using Terraform
        - Change related ALB Variables and ALB Host Header settings
        - Change related Multiple DNS Name in Route53
        - Create Multiple DNS Name reference in ALB and Route50 DNS 
            - Create DNS Variables names
    - Listener Indexes: https_listener_index = 0
    - Target Group Indexes: target_group_index = 0

### Terraform Modules used

- [terraform-aws-modules/vpc/aws](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest)
- [terraform-aws-modules/aws](https://registry.terraform.io/modules/terraform-aws-modules/aws/latest)
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
