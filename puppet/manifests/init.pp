exec { 'apt-get update':
  path => '/usr/bin',
}

package { 'vim':
  ensure => present,
}

include xorg
include x11-common

package { 'x11-xserver-utils':
  ensure => present,
}

package { 'xinit':
  ensure => present,
}

package { 'chromium-browser':
  ensure => present,
}

include xsession
