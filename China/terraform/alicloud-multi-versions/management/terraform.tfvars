//PLEASE refer to README.md for accepted values FOR THE VARIABLES BELOW

// --- VPC Network Configuration ---
vpc_id = "vpc-2ze0yslen0xmk0ke8twk4"
vswitch_id = "vsw-2ze0izvuw90bhcpnlc8js"

// --- ECS Instances Configuration ---
instance_name = "CP-Management-tf"
instance_type = "ecs.g6e.xlarge"
key_name = "lyq-common"
allocate_and_associate_eip = true
volume_size = 100
disk_category = "cloud_essd"
ram_role_name = ""
instance_tags = {
  key1 = "value1"
  key2 = "value2"
}

// --- Check Point Settings ---
version_license = "R81.20-BYOL"
admin_shell = "/bin/bash"
password_hash = "$6$NX7BwgSmOR4TFmMN$f.ZcNLMfAYtpq2L20MdlvVAJx8Oc4X9eTVSnF9Y3HSrzEv.L46yS0LsLsP8S5bBnLisf5iW/XzQenBdyHnwya0"
hostname = "mgmt-tf"

// --- Security Management Server Settings ---
is_primary_management = "true"
SICKey = "123456789"
allow_upload_download = "true"
gateway_management = "Locally managed"
admin_cidr = "0.0.0.0/0"
gateway_addresses = "0.0.0.0/0"
primary_ntp = ""
secondary_ntp = ""
bootstrap_script = "echo 'this is bootstrap script' > /home/admin/testfile.txt"