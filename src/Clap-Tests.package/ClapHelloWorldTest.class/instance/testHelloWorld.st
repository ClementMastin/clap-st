tests
testHelloWorld
	| argv match |
	argv := ClapContext on: #('hello' 'world').
	match := ClapCommandMatcher new match: hello with: argv.
	match should not be isMismatch.
	match should not be includesKey: 'shout'.
	match should be includesKey: 'who'.
	(match atName: 'who') word should equal: 'world'