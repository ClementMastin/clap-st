tests
testGenerateCommand: aResult
	(aResult lines includes: 'git := ClapCommand withName: git.') should be: true.
	(aResult lines includes: 'foo addSubcommand: git.') should be: true