running
testThis
	| argv match |
	argv := ClapContext on: #('clap' 'this').
	match := ClapCommandMatcher new match: clap with: argv.
	match should not be isMismatch.
	match should not be includesKey: 'directory'.
	match should be includesKey: 'this'.
	match should not be includesKey: 'that'.
	(match atName: 'this') should not be isMismatch.
	(match atName: 'this') should not be includesKey: 'slow'