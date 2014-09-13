# x11-common class

class x11-common {
	file { "/var/cache/debconf/x11-common.preseed":
		ensure	=> present,
		content	=> "x11-common	x11-common/xwrapper/actual_allowed_users	string	anybody
x11-common	x11-common/xwrapper/allowed_users	select	Anybody",
	}

	package { "x11-common":
		ensure	=> present,
		responsefile => "/var/cache/debconf/x11-common.preseed",
		require => File["/var/cache/debconf/x11-common.preseed"],
		notify => Exec['x11-common-debconf-set-selections'],
	}

	exec { 'x11-common-debconf-set-selections':
		require => File["/var/cache/debconf/x11-common.preseed"],
		command => '/usr/bin/debconf-set-selections /var/cache/debconf/x11-common.preseed',
	}
}
