documentation
generateDoc
	| docWriter |
	Stdio stdout
		nextPutAll: self description , String cr;
		lf.
	docWriter := ClapDocWriter new: Stdio stdout.
	docWriter generateDoc: self create.
	docWriter stream printOn: Stdio stdout.
	Stdio stdout f