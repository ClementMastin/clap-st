tests
testGenerateFlag: aResult
	(aResult lines includes: 'mode := ClapFlag withName: mode.') should be: true.
	(aResult lines includes: 'foo addFlag: mode.') should be: true