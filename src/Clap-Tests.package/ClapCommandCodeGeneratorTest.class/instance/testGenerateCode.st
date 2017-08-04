tests
testGenerateCode
	| result |
	super testGenerateCode.
	result := subject generateCode: argv.
	self testGenerateFlag: result.
	self testGenerateCommand: result.
	self testGenerateSubcommand: result