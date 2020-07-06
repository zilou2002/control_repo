class role::netrr_ext {
  include profile::bird_netrr
  include profile::bird_policy
  include profile::bird_feeder
  include profile::ssh_server
}
