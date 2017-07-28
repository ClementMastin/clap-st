running
setUp
	dirFlag := ((ClapFlag withName: 'directory') matcher: ClapStandardFlagMatcher new)
		addPositional: (ClapPositional withName: 'DIR').
	slowFlag := (ClapFlag withName: 'slow') matcher: ClapStandardFlagMatcher new.
	clap := (ClapCommand withName: 'clap')
		addFlag: dirFlag;
		addSubcommand: ((ClapCommand withName: 'this') addFlag: slowFlag);
		addSubcommand:
			((ClapCommand withName: 'that')
				addFlag: ((ClapFlag withName: 'encore') matcher: ClapStandardFlagMatcher new);
				addPositional: (ClapPositional withName: 'clappee'))