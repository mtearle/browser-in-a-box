class xsession {
	file { '.xsession':
		path	=>	'/home/vagrant/.xsession',
		ensure	=>	file,
		content	=>	template("xsession/dot-xsession.erb"),
	}
}
