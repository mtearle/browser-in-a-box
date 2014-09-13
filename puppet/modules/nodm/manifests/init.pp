class nodm {
	package { "nodm":
		ensure	=> present,
		notify => File['/etc/default/nodm'],
	}

	file { '/etc/default/nodm':
		path	=>	'/etc/default/nodm',
		ensure	=>	file,
		content	=>	template("nodm/nodm.erb"),
	}

	service { "nodm":
		ensure => running,
		enable => true,
		subscribe => File['/etc/default/nodm'],
	}
}
