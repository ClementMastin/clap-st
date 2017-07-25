doc
commmandWithSubcommands
	"A command with subcommands"

	<sampleInstance>
	^ (ClapCommand withName: 'main')
		addSubcommand: (ClapCommand withName: 'sub1');
		addSubcommand: (ClapCommand withName: 'sub2')