tests
testGenerateCode
	| result |
	super testGenerateCode.
	result := subject generateCode: argv.
	result lines second should equal: 'class := ClapPositional withName: class.'.
	result lines third should equal: 'foo addPositional: class.'