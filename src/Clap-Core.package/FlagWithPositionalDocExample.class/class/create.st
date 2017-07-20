instance creation
create
	| command flag |
	command :=ClapCommand withName: 'main'.
	flag := (ClapFlag withName: 'depth') addPositional: (ClapPositional withName: 'number').
	command addFlag: flag.
	^ command
	