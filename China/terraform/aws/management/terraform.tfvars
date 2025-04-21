//PLEASE refer to README.md for accepted values FOR THE VARIABLES BELOW

// --- VPC Network Configuration ---
vpc_id = "vpc-0f4b839f7a747e106"
subnet_id = "subnet-0dc0e38655883f64d"

// --- EC2 Instances Configuration ---
management_name = "CP-Management-tf"
management_instance_type = "m5.xlarge"
key_name = "cn-publickey"
allocate_and_associate_eip = true
volume_size = 100
volume_encryption = "alias/aws/ebs"
enable_instance_connect = false
disable_instance_termination = false
metadata_imdsv2_required = true
instance_tags = {
  key1 = "value1"
  key2 = "value2"
}

// --- IAM Permissions ---
iam_permissions = "Create with read permissions"
predefined_role = ""
sts_roles = []

// --- Check Point Settings ---
management_version = "R81.20-BYOL"
admin_shell = "/etc/cli.sh"
management_password_hash = "$6$Ue.PCqZMxS3hM01u$Byt.LpmBLN6TYn38obCc.kwubzHwcXtxvLl34iHbNER/suoLYJbkYCB5b8mWBq7JxIEz52.QyQJDelcWwefyq1"
management_maintenance_mode_password_hash = "grub.pbkdf2.sha512.10000.C9D492E201B2F6729E9828F3B92BD2B39F2961ED7F848CD96C86643D4CF53A7AF38B23F2B95FFBCC97AFECA4393EC045A6EB2DFFFA937C094E71ABF828936401.4913885D116A9085C1D652A696CDD52D4D7F28B1B626853126934E47E7DCD25D2D51B75EBF0C89F74916FF07AADE1044E519B081EA77D5B51AFBFB9F2CC65E18" # For R81.10 and below the management_password_hash is used also as maintenance-mode password.
// --- Security Management Server Settings ---
management_hostname = "mgmt-tf"
management_installation_type = "Primary management"
SICKey = ""
allow_upload_download = "true"
gateway_management = "Locally managed"
admin_cidr = "0.0.0.0/0"
gateway_addresses = "0.0.0.0/0"
primary_ntp = ""
secondary_ntp = ""
management_bootstrap_script = "echo 'this is bootstrap script' > /home/admin/bootstrap.txt"
