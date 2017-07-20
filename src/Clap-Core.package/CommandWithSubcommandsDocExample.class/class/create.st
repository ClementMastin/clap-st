instance creation
create
	^ (ClapCommand withName: 'main') addSubcommand: (ClapCommand withName: 'sub1');addSubcommand: (ClapCommand withName: 'sub2')