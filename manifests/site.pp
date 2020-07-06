node default {
}
node 'master.puppet.vm' {
    include role::master_server
}
#node /^netrr/ {
#   include role::netrr
#}
#}
