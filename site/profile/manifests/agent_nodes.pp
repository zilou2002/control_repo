class profile::agent_nodes {
  include dockeragent
  dockeragent::node { 'netrr-ext.puppet.vm': }
  dockeragent::node { 'netrr-int.puppet.vm': }
  host {'netrr-ext.puppet.vm':
    ensure  => present,
    ip      => '172.18.0.2',
  }
  host {'netrr-int.puppet.vm':
    ensure  => present,
    ip      => '172.18.0.3',
  }
}
