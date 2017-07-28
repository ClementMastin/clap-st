tests
testShouting
	| argv match |
	argv := ClapContext on: #('hello' '--shout').
	match := ClapCommandMatcher new match: hello with: argv.
	match should not be isMismatch.
	match should be includesKey: 'shout'.
	match should not be includesKey: 'who'