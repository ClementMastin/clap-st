running
testFlagValue
	| argv match |
	slowFlag meaning: [ :flag | flag isMismatch not ].
	argv := ClapContext on: #('clap' 'this' '--slow').
	match := ClapCommandMatcher new match: clap with: argv.
	((match atName: 'this') at: slowFlag) value should be: true