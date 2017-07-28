tests
testMismatchesDifferentAlias
	| match |
	argv stub peek willReturn: 'fooNOT'.
	match := ClapCommandMatcher new match: subject with: argv.
	argv should not receive next.
	match should be isMismatch