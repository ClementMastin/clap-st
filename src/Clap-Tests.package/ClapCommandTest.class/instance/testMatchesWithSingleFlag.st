tests
testMatchesWithSingleFlag
	| match |
	subject addFlag: ((ClapFlag withName: 'bar') matcher: ClapStandardFlagMatcher new).
	argv := ClapContext on: #('foo' '--bar').
	match := ClapCommandMatcher new match: subject with: argv.
	match should not be isMismatch.
	match should be includesKey: 'bar'