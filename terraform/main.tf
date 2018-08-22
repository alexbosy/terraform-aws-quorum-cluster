module "quorum_cluster" {
  # Source from github if using in another project
  source = "modules/quorum-cluster"

  # Variables sourced from terraform.tfvars
  public_key_path                   = "${var.public_key_path}"
  public_key                        = "${var.public_key}"
  private_key                       = "${var.private_key}"
  primary_region                    = "${var.primary_region}"
  network_id                        = "${var.network_id}"
  gas_limit                         = "${var.gas_limit}"
  force_destroy_s3_buckets          = "${var.force_destroy_s3_buckets}"
  generate_metrics                  = "${var.generate_metrics}"
  vault_cluster_size                = "${var.vault_cluster_size}"
  vault_instance_type               = "${var.vault_instance_type}"
  consul_cluster_size               = "${var.consul_cluster_size}"
  consul_instance_type              = "${var.consul_instance_type}"
  bootnode_instance_type            = "${var.bootnode_instance_type}"
  quorum_maker_instance_type        = "${var.quorum_maker_instance_type}"
  quorum_validator_instance_type    = "${var.quorum_validator_instance_type}"
  quorum_observer_instance_type     = "${var.quorum_observer_instance_type}"
  use_dedicated_bootnodes           = "${var.use_dedicated_bootnodes}"
  use_dedicated_makers              = "${var.use_dedicated_makers}"
  use_dedicated_validators          = "${var.use_dedicated_validators}"
  use_dedicated_observers           = "${var.use_dedicated_observers}"
  use_dedicated_vault_servers       = "${var.use_dedicated_vault_servers}"
  use_dedicated_consul_servers      = "${var.use_dedicated_consul_servers}"
  use_elastic_bootnode_ips          = "${var.use_elastic_bootnode_ips}"
  ssh_ips                           = "${var.ssh_ips}"
  quorum_vpc_base_cidr              = "${var.quorum_vpc_base_cidr}"
  bootnode_vpc_base_cidr            = "${var.bootnode_vpc_base_cidr}"
  node_volume_size                  = "${var.node_volume_size}"
  internal_dns_root_domain          = "${var.internal_dns_root_domain}"
  internal_dns_sub_domain_vault     = "${var.internal_dns_sub_domain_vault}"
  cert_tool_ca_public_key_file_path = "${var.cert_tool_ca_public_key_file_path}"
  cert_tool_public_key_file_path    = "${var.cert_tool_public_key_file_path}"
  cert_tool_private_key_file_path   = "${var.cert_tool_private_key_file_path}"
  cert_tool_kms_key_id              = "${var.cert_tool_kms_key_id}"
  cert_tool_server_cert_arn         = "${var.cert_tool_server_cert_arn}"
  threatstack_deploy_key            = "${var.threatstack_deploy_key}"
  foxpass_base_dn                   = "${var.foxpass_base_dn}"
  foxpass_bind_user                 = "${var.foxpass_bind_user}"
  foxpass_bind_pw                   = "${var.foxpass_bind_pw}"
  foxpass_api_key                   = "${var.foxpass_api_key}"
  vault_enterprise_license_key      = "${var.vault_enterprise_license_key}"
  vote_threshold                    = "${var.vote_threshold}"
  min_block_time                    = "${var.min_block_time}"
  max_block_time                    = "${var.max_block_time}"
  bootnode_counts                   = "${var.bootnode_counts}"
  maker_node_counts                 = "${var.maker_node_counts}"
  validator_node_counts             = "${var.validator_node_counts}"
  observer_node_counts              = "${var.observer_node_counts}"

  vault_consul_ami = "${var.vault_consul_ami}"
  quorum_amis      = "${var.quorum_amis}"
  bootnode_amis    = "${var.bootnode_amis}"
}
