running
testWrongCommandMismatches
	| argv match |
	argv := ClapContext on: #('foo' '-d' 'bar/baz/qux' 'this').
	match := ClapCommandMatcher new match: clap with: argv.
	match should be isMismatch