# infra/terraform/aws

<!-- BEGIN_TF_DOCS -->

### Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.14.9 |

### Providers

| Name | Version |
|------|---------|
| aws | 3.53.0 |

### Resources

| Name | Type |
|------|------|
| [aws_instance.test_server](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |

### Inputs

| Name | Description | Default | Required |
|------|-------------|---------|:--------:|
| aws\_region | AWS resource region | `"eu-west-2"` | no |
| ec2\_enable | Enable EC2 | `true` | no |
| ec2\_ssh\_key\_name | The SSH Key Name | `"ansible-key"` | no |
| ec2\_ssh\_key\_public | Path to the SSH Public Key | `"../../files/id_rsa.ansible.pub"` | no |
| profile | AWS Profile | `"terraform"` | no |
| rds\_enable | Enable RDS | `true` | no |
| rds\_password | Region for the RDS database | `"password123"` | no |
| rds\_user | Region for AWS resources | `"changeme"` | no |

<!-- END_TF_DOCS -->
