class profile::agent_nodes {
  
  host {'web.puppet.vm':
  ensure => present,
  ip      => '192.168.1.2'
  }
  
  host {'db.puppet.vm':
  ensure => present,
  ip      => '192.168.1.3'
  }
}
