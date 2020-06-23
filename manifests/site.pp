# Where the puppet master check 

node default {
}
node 'master.puppet.vm' {
  include role::master_server
}
