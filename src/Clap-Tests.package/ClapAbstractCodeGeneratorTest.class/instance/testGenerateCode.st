tests
testGenerateCode
	| result |
	result := subject generateCode: argv.
	result lines first should
		equal: 'foo := ' , self classToTest addArg , 'withName: foo.'