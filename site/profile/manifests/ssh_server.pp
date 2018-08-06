class profile::ssh_server {
  package {'openssh-server':
            ensure => present,
  }
  
  service {'sshd':
  ensure => 'running',
  enable => 'true',
}

ssh_authorized_key{'root@master.puppet.vm':
ensure => present,
user => 'root',
type => 'ssh-rsa',
key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCs/W85eei3hN8RipVPBTe+8Lwzqt17tWaWIYbH9BMaclkFNqPobErjiZptidd9n2U2rHJUzKoNoqr0l7X4Ey488Vcp4Ld7MkW/rrHsnumTDkaySCiMFDowTc+aVqr7sCTw6lViWVIjcXlH1NBNkoSkIUB1VGlWO0ANpB9IIFbyENikmS6PgM2BepbrrgDi2N3+/87/Tgkal/ClxagAPM6E0B3s5UQrLfvnDo+WzsuGpXzXUHannFHGSV6YWtOenqwOAx6vBqQAWgAqmNrlvP2Sccxxst9aGsg0X/u15YexFF6cHAUdHIZT2Z4Fng6XZjENx3JG7A2olvNuiux0D31H',
}

}
