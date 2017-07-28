tests
testMatchesWithSingleSubcommand
	| match |
	subject addSubcommand: (ClapCommand withName: 'bar').
	argv := ClapContext on: #('foo' 'bar').
	match := ClapCommandMatcher new match: subject with: argv.
	match should not be isMismatch.
	match should be includesKey: 'bar'