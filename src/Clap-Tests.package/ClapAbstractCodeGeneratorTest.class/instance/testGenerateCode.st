tests
testGenerateCode
	| result |
	result := subject generateCode: argv.
	result should equal: 'foo := ' , self classToTest addArg , 'withName: foo.' , self newLine