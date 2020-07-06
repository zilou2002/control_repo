#node default {
node 'master.puppet.vm' {
    file { '/root/README':
    ensure  => file,
    content => "Here it is",
}
node /^netrr/ {
   include role::netrr
}
