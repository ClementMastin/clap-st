running
testParameterizedFlagValue
	| argv match |
	dirFlag meaning: [ :flag | Path from: (flag atName: 'DIR') value ].
	argv := ClapContext on: #('clap' '--directory' 'foo/bar/baz').
	match := ClapCommandMatcher new match: clap with: argv.
	(match at: dirFlag) value should equal: Path * 'foo' / 'bar' / 'baz'