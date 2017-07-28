tests
testMatchesWithWrongFlag
	| match |
	subject addFlag: ((ClapFlag withName: 'bar') matcher: ClapStandardFlagMatcher new).
	argv stub peek willReturnValueFrom: #('foo' '--notbar' 'Object').
	argv stub next willReturnValueFrom: #('foo' '--notbar' 'Object').
	argv stub atEnd willReturn: false.
	match := ClapCommandMatcher new match: subject with: argv.
	match should be isMismatch