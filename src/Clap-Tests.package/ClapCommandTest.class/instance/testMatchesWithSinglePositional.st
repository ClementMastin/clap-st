tests
testMatchesWithSinglePositional
	| match |
	subject addPositional: (ClapPositional withName: 'bar').
	argv stub peek willReturnValueFrom: #('foo' 'valueforbar').
	argv stub next willReturnValueFrom: #('foo' 'valueforbar').
	argv stub atEnd willReturn: true.
	argv stub atEnd willReturn: false; use: 3.

	match := subject matchOn: argv.

	argv should receive atEnd exactly: 4.
	argv should receive next twice.
	match should not be isMismatch.
	match word should equal: 'foo'.
	match should be includesKey: 'bar'. "FIXME not sure about the dictionary protocol"
	(match atName: 'bar') word should equal: 'valueforbar'