tests
testMismatch
	| match |
	argv stub peek willReturn: 'normal'.
	argv stub next willReturn: 'normal'.
	match := subject matchOn: argv.
	match should be isMismatch