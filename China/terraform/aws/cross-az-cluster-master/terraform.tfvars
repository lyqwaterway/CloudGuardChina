//PLEASE refer to README.md for accepted values FOR THE VARIABLES BELOW

// --- VPC Network Configuration ---
vpc_cidr = "10.0.0.0/16"
public_subnets_map = {
  "cn-north-1a" = 1
  "cn-north-1b" = 2
}
private_subnets_map = {
  "cn-north-1a" = 3
  "cn-north-1b" = 4
}
subnets_bit_length = 8

// --- EC2 Instance Configuration ---
gateway_name = "Check-Point-Cluster-tf"
gateway_instance_type = "c5.xlarge"
key_name = "cn-publickey"
volume_size = 100
volume_encryption = "alias/aws/ebs"
enable_instance_connect = false
disable_instance_termination = false
metadata_imdsv2_required = true
instance_tags = {
  key1 = "value1"
  key2 = "value2"
}
predefined_role = ""

// --- Check Point Settings ---
gateway_version = "R81.20-BYOL"
admin_shell = "/etc/cli.sh"
gateway_SICKey = "123456789"
gateway_password_hash = "$6$Ue.PCqZMxS3hM01u$Byt.LpmBLN6TYn38obCc.kwubzHwcXtxvLl34iHbNER/suoLYJbkYCB5b8mWBq7JxIEz52.QyQJDelcWwefyq1"
gateway_maintenance_mode_password_hash = "grub.pbkdf2.sha512.10000.C9D492E201B2F6729E9828F3B92BD2B39F2961ED7F848CD96C86643D4CF53A7AF38B23F2B95FFBCC97AFECA4393EC045A6EB2DFFFA937C094E71ABF828936401.4913885D116A9085C1D652A696CDD52D4D7F28B1B626853126934E47E7DCD25D2D51B75EBF0C89F74916FF07AADE1044E519B081EA77D5B51AFBFB9F2CC65E18" # For R81.10 and below the gateway_password_hash is used also as maintenance-mode password.

// --- Quick connect to Smart-1 Cloud (Recommended) ---
memberAToken = ""
memberBToken = ""

// --- Advanced Settings ---
resources_tag_name = "tag-name"
gateway_hostname = "gw-hostname"
allow_upload_download = true
enable_cloudwatch = false
gateway_bootstrap_script = "echo 'this is bootstrap script' > /home/admin/bootstrap.txt"
primary_ntp = ""
secondary_ntp = ""