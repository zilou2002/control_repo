# Where the puppet master check 

node default {
  file {'/root/README':
    ensure  => file,
    content => 'This is a readme',
    owner   => 'root',
  }
  file {'/root/README':
    owner   => 'root'
  }
}
