class xorg {
	package { "xserver-xorg":
		ensure	=> present,
		notify => File['/etc/X11/xorg.conf'],
	}

	file { '/etc/X11/xorg.conf':
		path	=>	'/etc/X11/xorg.conf',
		ensure	=>	file,
		content	=>	template("xorg/xorg.conf.erb"),
	}

}
