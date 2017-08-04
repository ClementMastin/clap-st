running
setUp
	| subcommand |
	super setUp.
	argv addFlag: (ClapFlag withName: 'mode').
	subcommand := ClapCommand withName: 'git'.
	subcommand addSubcommand: (ClapCommand withName: 'add').
	argv addSubcommand: subcommand