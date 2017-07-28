tests
testHello
	| argv match |
	argv := ClapContext on: #('hello').
	match := ClapCommandMatcher new match: hello with: argv.
	match should not be isMismatch.
	match should not be includesKey: 'shout'.
	match should not be includesKey: 'who'