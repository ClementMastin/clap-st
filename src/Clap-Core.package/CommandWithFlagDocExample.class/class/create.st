instance creation
create
	^ (ClapCommand withName: 'main') addFlag: (ClapFlag withName: 'force')