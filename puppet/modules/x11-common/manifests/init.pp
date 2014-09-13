# x11-common class

class x11-common {
	package { "x11-common":
		ensure	=> present,
		notify => File['/etc/X11/Xwrapper.config'],
	}

	file { '/etc/X11/Xwrapper.config':
		path	=>	'/etc/X11/Xwrapper.config',
		ensure	=>	file,
		content	=>	template("x11-common/xwrapper.erb"),
	}

}
