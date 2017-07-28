running
testRootPositionalAfterSubcommand
	| argv match |
	argv := ClapContext on: #('clap' 'this' '--directory' 'foo/bar/baz').
	match := ClapCommandMatcher new match: clap with: argv.
	match should be isMismatch