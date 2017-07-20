documentation
generateDoc
	| docWriter |
	Stdio stdout
		nextPutAll: self comment , OSPlatform current lineEnding;
		lf.
	docWriter := ClapDocWriter
		new: Stdio stdout.
	docWriter generateDoc: self create.
	docWriter stream lf