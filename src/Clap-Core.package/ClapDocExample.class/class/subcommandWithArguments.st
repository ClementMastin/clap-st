documentation
subcommandWithArguments
	"A command whith a subcommand which has arguments"
	<sampleInstance>
	| command subcommand |
	command := ClapCommand withName: 'main'.
	subcommand := (ClapCommand withName: 'sub')
		addFlag: (ClapFlag withName: 'mode');
		addPositional: (ClapPositional withName: 'difficulty').
	command addSubcommand: subcommand.
	^ command