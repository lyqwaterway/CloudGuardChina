//PLEASE refer to README.md for accepted values FOR THE VARIABLES BELOW

// --- Network Configuration ---
vpc_cidr = "10.0.0.0/16"
public_subnets_map = {
  "cn-north-1a" = 1
  "cn-north-1b" = 2
}
subnets_bit_length = 8

// --- General Settings ---
key_name = "publickey"
enable_volume_encryption = true
enable_instance_connect = true
disable_instance_termination = false
metadata_imdsv2_required = true
allow_upload_download = true

// --- Check Point CloudGuard Network Security Gateways Auto Scaling Group Configuration ---
gateway_name = "gateway"
gateway_instance_type = "c5.large"
gateways_min_group_size = 2
gateways_max_group_size = 4
gateway_version = "R81.20-BYOL"
gateway_password_hash = ""
gateway_maintenance_mode_password_hash = "" # For R81.10 and below the gateway_password_hash is used also as maintenance-mode password.
gateway_SICKey = "1234567891234"
enable_cloudwatch = true
asn = "6500"

// --- Check Point CloudGuard Network Security Management Server Configuration ---
management_deploy = true
management_instance_type = "c5.large"
management_version = "R81.20-BYOL"
management_password_hash = ""
management_maintenance_mode_password_hash = "" # For R81.10 and below the management_password_hash is used also as maintenance-mode password.
management_permissions = "Create with read-write permissions"
management_predefined_role = ""
gateways_blades = true
admin_cidr = "0.0.0.0/0"
gateways_addresses = "0.0.0.0/0"
gateway_management = "Locally managed"

// --- Automatic Provisioning with Security Management Server Settings ---
control_gateway_over_public_or_private_address = "private"
management_server = "mgmt"
configuration_template = "tgw-asg"