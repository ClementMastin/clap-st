tests
testMatching
	| match |
	argv stub peek willReturn: 'fast'.
	argv stub next willReturn: 'slow'.
	match := subject matchOn: argv.
	match should not be isMismatch