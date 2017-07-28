running
setUp
	hello := (ClapCommand withName: 'hello')
		addFlag: ((ClapFlag withName: 'shout') matcher: ClapStandardFlagMatcher new);
		addPositional: (ClapPositional withName: 'who')