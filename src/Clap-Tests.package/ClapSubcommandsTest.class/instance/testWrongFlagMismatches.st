running
testWrongFlagMismatches
	| argv match |
	argv := ClapContext on: #('clap' '-f' 'bar/baz/qux' 'this').
	match := ClapCommandMatcher new match: clap with: argv.
	match should be isMismatch