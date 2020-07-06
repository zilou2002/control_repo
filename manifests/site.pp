node default {
 node 'master.puppet.vm' {
    file { '/etc/facter/facts.d/twitch_role.txt':
    ensure => file,
    content => "netrr-ext",
 }
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
  }
  hiera_include('classes')
}
