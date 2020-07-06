node default {
# node 'master.puppet.vm' {
#   include role::master_server
#   file { '/root/README':
#   ensure => file,
#   content => "Welcome to ${fqdn}\n",
#   }
# }
# node 'minetest.puppet.vm' {
#   include role::minecraft_server
# }
# node /^web/ {
#   include role::app_server
# }
# node /^db/ {
#   include role::db_server
# }
# node /^netrr/ {
#   include role::netrr
# }
  if $facts['twitch_role'] != undef {
    $cluster = $facts['twitch_role']
  } elsif $facts['ec2_user_data_cluster'] != undef {
    $cluster = $facts['ec2_user_data_cluster']
  } else {
    $cluster = 'unclassified'
  }
  if $facts['twitch_environment'] != undef {
    $twitch_environment = $facts['twitch_environment']
  } elsif $facts['ec2_user_data_twitch_environment'] != undef {
    $twitch_environment = $facts['ec2_user_data_twitch_environment']
  } else {
    $twitch_environment = 'production'
  }
  # This allows manifests to determine they're using omnibus (on Xenial).
  $omnibus_puppet = $::gemhome ? {
    '/opt/omnibus-puppet/' => true,
    default                => false,
  }
  hiera_include('classes')
}
