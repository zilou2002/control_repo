# Where the puppet master check 

node default {
  file {'/root/README':
    ensure => file,
  }
}
