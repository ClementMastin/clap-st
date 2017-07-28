tests
testMatches
	| match |
	argv stub peek willReturn: 'foo'.
	argv stub next willReturn: 'foo'.
	argv stub atEnd willReturn: true.
	match := ClapCommandMatcher new match: subject with: argv.
	argv should receive next.
	match should not be isMismatch.
	match word should equal: 'foo'