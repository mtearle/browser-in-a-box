exec { 'apt-get update':
  path => '/usr/bin',
}

package { 'vim':
  ensure => present,
}

package { 'xserver-xorg':
  ensure => present,
}

package { 'x11-xserver-utils':
  ensure => present,
}

package { 'xinit':
  ensure => present,
}

package { 'chromium-browser':
  ensure => present,
}

include x11-common
include xsession
