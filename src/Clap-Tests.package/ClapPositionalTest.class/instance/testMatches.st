tests
testMatches
	| match |
	argv stub atEnd willReturn: false.
	argv stub next willReturn: 'bar'.
	
	match := subject matchOn: argv.
	
	argv should receive next once.
	match should not be isMismatch.
	match specification should be: subject.
	match word should equal: 'bar'