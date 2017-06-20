accessing
parameters
	^ ClapAlternative new
		addValues: flags;
		addValues: subcommands;
		add: (ClapQueue withAll: positionals)