tests
testGenerateSubcommand: aResult
	(aResult lines includes: 'add := ClapCommand withName: add.') should be: true.
	(aResult lines includes: 'git addSubcommand: add.') should be: true