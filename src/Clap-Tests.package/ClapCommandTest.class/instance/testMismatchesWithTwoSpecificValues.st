tests
testMismatchesWithTwoSpecificValues
	| match |
	subject addSpecificValue: ((ClapSpecificValue withName: 'mode') addValues: #('fast' 'slow')).
	argv stub peek willReturnValueFrom: #('foo' 'fast' 'slow').
	argv stub next willReturnValueFrom: #('foo' 'fast' 'slow').
	argv stub atEnd willReturn: false.
	match := subject matchOn: argv.
	match should be isMismatch