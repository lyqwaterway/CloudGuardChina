# Check Point CloudGuard Network Terraform deployment modules for AWS

This project was developed to allow Terraform deployments for Check Point CloudGuard Network solutions on AWS.


These modules use Terraform's [AWS provider](https://www.terraform.io/docs/providers/aws/index.html) in order to create and provision resources on AWS.


 ## Prerequisites

1. [Download Terraform](https://www.terraform.io/downloads.html) and follow the instructions according to your OS.
2. Get started with Terraform AWS provider - refer to [Terraform AWS provider best practices](https://www.terraform.io/docs/providers/aws/index.html).
3. Subscribe to Check Point CloudGuard Network's offers - visit [AWS Marketplace](https://awsmarketplace.amazonaws.cn/marketplace/search/results?prevFilters=%257B%2522nc2%2522%3A%2522h_ql_mp_m%2522%257D&searchTerms=Check+Point).

## Modifications for AWS China Deployment Using Terraform
0. Updated the crn in cme-iam-role/main.tf to aws-cn
Modified the resource ARN to use the aws-cn format:
```
data "aws_iam_policy_document" "cme_role_write_policy_doc" {
	statement {
    effect = "Allow"
    actions = [
      "cloudformation:CreateStack",
      "cloudformation:DeleteStack"]
    resources = ["arn:aws-cn:cloudformation:*:*:stack/vpn-by-tag--*/*"]
  }
}
```
1. Updated amis_url in /modules/amis/variables.tf to use China S3
Changed the amis_url variable to point to the China S3 bucket:
```
variable "amis_url" {
  type = string
  description = "URL to amis.yaml"
  default = "https://cgi-cfts.s3.cn-northwest-1.amazonaws.com.cn/utils/amis.yaml"
}
```
2. Updated amis_url in autoscale-gwlb/main.tf to use China S3
Modified the amis_url in the autoscale-gwlb module to use the China S3 bucket:
```
module "amis" {
  source = "../modules/amis"
  version_license = var.gateway_version
  amis_url = "https://cgi-cfts.s3.cn-northwest-1.amazonaws.com.cn/utils/amis.yaml"
}
 ```