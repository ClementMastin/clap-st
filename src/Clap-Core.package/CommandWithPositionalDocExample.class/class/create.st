instance creation
create
	^ (ClapCommand withName: 'main') addPositional: (ClapPositional withName: 'class')