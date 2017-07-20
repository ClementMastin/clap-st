instance creation
create
	| command subcommand |
	command := ClapCommand withName: 'main'.
	subcommand := (ClapCommand withName: 'sub') addFlag: (ClapFlag withName: 'mode');addPositional: (ClapPositional withName: 'difficulty').
	command addSubcommand: subcommand .
	^ command