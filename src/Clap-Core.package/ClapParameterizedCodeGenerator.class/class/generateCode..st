doc
generateCode: aParameterized
	| s |
	s := super generateCode: aParameterized.
	^ s , (ClapPositionalCodeGenerator
		generateCode: aParameterized positionals
		of: aParameterized canonicalName)