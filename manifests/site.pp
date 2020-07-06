node default {
}

node 'master.puppet.vm' {
    include role::master_server
}

node /^netrr-ext/ {
   include role::netrr_ext
}

node /^netrr-int/ {
   include role::netrr_int
}
